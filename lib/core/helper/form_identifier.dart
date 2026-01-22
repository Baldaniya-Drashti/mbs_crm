class FormIdentifier {
  final int? serverId;
  final String? localId;

  const FormIdentifier({this.serverId, this.localId})
    : assert(
        serverId != null || localId != null,
        'Either serverId or localId must be provided',
      );
  bool get isEdit => serverId != null || localId != null;
}
