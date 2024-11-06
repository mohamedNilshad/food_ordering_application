class ResponseModel<T, E> {
  final bool success;
  final T data;
  final E message;

  ResponseModel({this.success = false, required this.message, required this.data});

  ResponseModel.fromJson(Map<String, dynamic> map) :
    success = (map["success"] == null) ? false : map["success"],
    message = (E is Map)
        ? map["message"].map((k, v) => v).toList().join("\n")
        : map["message"],
    data = map["data"];

  Map<String, dynamic> toMap() => {
    "success": success,
    "message": message,
    "data": data,
  };
}