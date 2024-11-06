import 'package:foa/src/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

class CustomSystemErrorScreen extends StatelessWidget {
  const CustomSystemErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              AppStrings.appUnrecognisedError,
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back"),
            ),
          ],
        ),
      ),
    ));
  }
}
