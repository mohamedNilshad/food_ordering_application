import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/error/failures.dart';
import 'package:foa/src/core/presentation/snack_bars/custom.snackbar.dart';
import 'package:foa/src/core/provider/base.provider.dart';
import 'package:foa/src/injection_container.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class MenuProvider extends BaseProvider {
  // final CategoryUsecase _categoryUsecase = sl<CategoryUsecase>();
  //
  // Future<List<CourseCategory>?> getAllCategories(String baseUrl, BuildContext context, String token) async {
  //   try {
  //     List<CourseCategory> category = [];
  //     Either<Failure, List<CourseCategory>> result = await _categoryUsecase(Params(baseUrl: baseUrl, token: token));
  //     return result.fold((l) {
  //
  //       loading = false;
  //
  //       customSnackBar(context, l.message, backgroundColor: AppColors.error);
  //       return;
  //     }, (List<CourseCategory> cat) {
  //       category = cat;
  //       loading = false;
  //       return category;
  //     });
  //   } catch (error) {
  //     loading = false;
  //     customSnackBar(context, AppStrings.appUnrecognisedError,
  //         backgroundColor: AppColors.error);
  //     return null;
  //   }
  // }

}
