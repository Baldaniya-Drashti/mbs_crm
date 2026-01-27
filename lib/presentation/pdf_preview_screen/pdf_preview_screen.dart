import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/pdf_format/dynamic_pdf_generator.dart';
import 'package:printing/printing.dart';

@RoutePage(name: 'PdfPreviewScreen')
class PdfPreviewScreen extends StatelessWidget {
  final Map<String, dynamic> json;

  const PdfPreviewScreen({super.key, required this.json});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDF Preview")),
      /*   body: PdfPreview(
        allowPrinting: false,
        allowSharing: true,
        canChangeOrientation: false,
        canChangePageFormat: false,
        build: (format) => DynamicPdfGenerator.buildPdf(json),
      ), */
    );
  }
}
