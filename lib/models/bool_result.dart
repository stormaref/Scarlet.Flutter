class BoolResult {
  late bool succeeded;
  late List<String> errors;

  BoolResult.fromJson(Map<String, dynamic> json) {
    errors = List.empty();
    succeeded = json['succeeded'];
    errors = json['errors'].cast<String>();
  }
}
