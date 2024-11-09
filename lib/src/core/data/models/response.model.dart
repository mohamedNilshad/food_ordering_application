class ResponseModel<T, E> {
  final bool success;
  final T data;

  ResponseModel({this.success = false, required this.data});

  ResponseModel.fromJson(Map<String, dynamic> map) :
    success = (map["Status"] == null) ? false : map["Status"],
    data = map["Result"];

  Map<String, dynamic> toMap() => {
    "success": success,
    "data": data,
  };
}