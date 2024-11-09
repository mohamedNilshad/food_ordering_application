import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/domain/usecases/usecase.dart';
import 'package:foa/src/core/error/failures.dart';
import 'package:foa/src/core/presentation/snack_bars/custom.snackbar.dart';
import 'package:foa/src/core/provider/base.provider.dart';
import 'package:foa/src/features/manu/domain/usecases/load_menu.usecase.dart';
import 'package:foa/src/injection_container.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class MenuProvider extends BaseProvider {
  final LoadMenuUsecase _loadMenuUsecase = sl<LoadMenuUsecase>();

  Future<List<Menu>?> getAllMenu(BuildContext context) async {
    try {
      Either<Failure, List<Menu>> result = await _loadMenuUsecase(NoParams());

      return result.fold((l) {

        loading = false;
        customSnackBar(context, l.message, backgroundColor: AppColors.error);
        return;
      }, (List<Menu> m) {
        loading = false;
        return m;
      });
    } catch (error) {
      loading = false;
      customSnackBar(context, AppStrings.appUnrecognisedError,
          backgroundColor: AppColors.error);
      return null;
    }
  }

}
