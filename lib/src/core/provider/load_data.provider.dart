import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/domain/entities/result.entity.dart';
import 'package:foa/src/core/domain/usecases/load_data.usecase.dart';
import 'package:foa/src/core/domain/usecases/usecase.dart';
import 'package:foa/src/core/error/failures.dart';
import 'package:foa/src/core/presentation/snack_bars/custom.snackbar.dart';
import 'package:foa/src/core/provider/base.provider.dart';
import 'package:foa/src/injection_container.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class LoadDataProvider extends BaseProvider {
  final LoadDataUsecase _loadDataUsecase = sl<LoadDataUsecase>();

  Result? res;
  Future<Result?> loadData(BuildContext context) async {
    try {
      Either<Failure, Result> result = await _loadDataUsecase(NoParams());

      return result.fold((l) {

        loading = false;
        customSnackBar(context, l.message, backgroundColor: AppColors.error);
        return;
      }, (Result? r) {
        loading = false;
        res = r;
        return r;
      });
    } catch (error) {
      loading = false;
      customSnackBar(context, AppStrings.appUnrecognisedError,
          backgroundColor: AppColors.error);
      return null;
    }
  }

}
