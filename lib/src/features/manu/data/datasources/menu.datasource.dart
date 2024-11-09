import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show  rootBundle;
import 'package:foa/src/core/constants/json_strings.dart';
import 'package:foa/src/core/data/models/response.model.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/error/exception.dart';
import 'package:foa/src/core/error/socket_exception_handle.dart';

abstract class IMenuDataSource {
  /// Queries GQL student by page
  ///
  /// Throws a [ServerException] for all error codes
  Future<List<Menu>> getAllMenu();

}

class MenuDataSourceImpl implements IMenuDataSource {

  MenuDataSourceImpl();

  @override
  Future<List<Menu>> getAllMenu() async {

    List<Menu> menu = [];

    try {

      final String response = await rootBundle.loadString(JsonStrings.dataJson);
      var result = jsonDecode(response);
      if (result["Status"]) {

        ResponseModel response = ResponseModel.fromJson(result);
        menu = response.data["Menu"].map<Menu>((v) => Menu.fromJson(v)).toList();
        print(menu);

      } else {
        throw RequestException("Something want wrong");
      }
    } on SocketException catch (e) {
      throwWhenSocketException(e);
      return menu;
    } catch (e) {
      print(e);
      rethrow;
    }
    return menu;
  }
}
