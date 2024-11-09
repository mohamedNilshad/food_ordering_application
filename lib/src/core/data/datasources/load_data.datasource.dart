import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show  rootBundle;
import 'package:foa/src/core/constants/json_strings.dart';
import 'package:foa/src/core/data/models/response.model.dart';
import 'package:foa/src/core/domain/entities/result.entity.dart';
import 'package:foa/src/core/error/exception.dart';
import 'package:foa/src/core/error/socket_exception_handle.dart';

abstract class ILoadDataSource {
  /// Queries GQL student by page
  ///
  /// Throws a [ServerException] for all error codes
  Future<Result> loadAllData();

}

class LoadDataSourceImpl implements ILoadDataSource {

  LoadDataSourceImpl();

  @override
  Future<Result> loadAllData() async {
    Result loadedResult;
    try {

      final String response = await rootBundle.loadString(JsonStrings.dataJson);
      var result = jsonDecode(response);
      if (result["Status"]) {

        ResponseModel response = ResponseModel.fromJson(result);
        loadedResult = Result.fromJson(response.data);

      } else {
        throw RequestException("Something want wrong");
      }
    } on SocketException catch (e) {
      throwWhenSocketException(e);
      return Result.fromJson(const {});
    } catch (e,stacktrace) {
      print('Stacktrace: $stacktrace');
      print(e);
      rethrow;
    }
    return loadedResult;
  }
}
