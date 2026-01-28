import 'package:mbs_crm/core/pdf_format/pdf_table_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget renderPdfTable(NormalizedTable table) {
  final flatCols = table.flatColumns;
  final parentCols = table.columns;
  final centerRow = table.rows ~/ 2;

  return pw.Table(
    columnWidths: {
      for (int i = 0; i < flatCols.length; i++) i: const pw.FlexColumnWidth(),
    },
    children: [
      // ───────────── HEADER ROW 1 (PARENT) ─────────────
      pw.TableRow(
        children: flatCols.map((col) {
          final parent = parentCols.firstWhere(
            (p) => p.children.contains(col),
            orElse: () => col,
          );

          final isGrouped = parent.children.isNotEmpty;
          final isFirstChild = isGrouped && parent.children.first == col;
          final isLastChild = isGrouped && parent.children.last == col;

          return pw.Container(
            height: 28,
            alignment: pw.Alignment.center,
            decoration: pw.BoxDecoration(
              color: isGrouped ? PdfColors.grey700 : PdfColors.grey300,
              border: pw.Border(
                top: const pw.BorderSide(),
                bottom: const pw.BorderSide(),

                left: isGrouped && !isFirstChild
                    ? pw.BorderSide.none
                    : const pw.BorderSide(),

                right: isGrouped && !isLastChild
                    ? pw.BorderSide.none
                    : const pw.BorderSide(),
              ),
            ),
            padding: const pw.EdgeInsets.all(4),
            child: (isFirstChild || !isGrouped)
                ? pw.Text(
                    parent.label ?? '',
                    textAlign: pw.TextAlign.center,
                    style: pw.TextStyle(
                      fontSize: 8,
                      fontWeight: pw.FontWeight.bold,
                      color: isGrouped ? PdfColors.white : PdfColors.black,
                    ),
                  )
                : pw.SizedBox(),
          );
        }).toList(),
      ),

      // ───────────── HEADER ROW 2 (CHILDREN ONLY) ─────────────
      pw.TableRow(
        children: flatCols.map((col) {
          final hasParent = parentCols.any((p) => p.children.contains(col));

          if (!hasParent) {
            return pw.Container(
              height: 22,
              decoration: pw.BoxDecoration(border: pw.Border.all()),
            );
          }

          return pw.Container(
            height: 22,
            alignment: pw.Alignment.center,
            padding: const pw.EdgeInsets.all(4),
            decoration: pw.BoxDecoration(
              color: PdfColors.grey300,
              border: pw.Border.all(),
            ),
            child: pw.Text(
              col.label ?? '',
              textAlign: pw.TextAlign.center,
              style: pw.TextStyle(fontSize: 8, fontWeight: pw.FontWeight.bold),
            ),
          );
        }).toList(),
      ),
      // ───────────── DATA ROWS ─────────────
      for (int r = 0; r < table.rows; r++)
        pw.TableRow(
          children: flatCols.map((col) {
            if (col.display == 'single' && r != centerRow) {
              return pw.Container(
                height: 26,
                decoration: pw.BoxDecoration(border: pw.Border.all()),
              );
            }

            return pw.Container(
              height: 26,
              padding: const pw.EdgeInsets.all(4),
              alignment: pw.Alignment.centerLeft,
              decoration: pw.BoxDecoration(border: pw.Border.all()),
              child: pw.Text(
                table.cellValue(r, col.key!),
                style: const pw.TextStyle(fontSize: 8),
              ),
            );
          }).toList(),
        ),
    ],
  );
}
