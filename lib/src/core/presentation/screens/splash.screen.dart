import 'package:firebase_auth/firebase_auth.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/provider/load_data.provider.dart';
import 'package:foa/src/core/router/route.constants.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool loading = false;

  Future<void> _fetchResults() async {
    try {
      setState(() => loading = true);
      context.read<LoadDataProvider>().loadData(context).then((v) {
        // Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
        //   context, RouteConstants.menuScreen, (route) => false,
        // ));
        setState(() => loading = false);

      });
    } catch(e) {
      print(e);
    }
  }

  signInWithGoogle()async{
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential user = await FirebaseAuth.instance.signInWithCredential(credential);
    if(user.user != null){
      Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
        context, RouteConstants.menuScreen, (route) => false,
        arguments:  user.user?.displayName,
      ));
    }
    print(user.user?.displayName);
  }
  @override
  void initState() {
    super.initState();
    Future.microtask(() => _fetchResults());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: HelperFunctions.screenHeight(context),
        width: HelperFunctions.screenWidth(context),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: AppColors.gradientBackgroundColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: !loading,
              replacement: Center(
                child: Text(
                  AppStrings.brandName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: AppColors.white
                  ),
                ),
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: signInWithGoogle,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.sm),
                    ),
                    child: const Text("Login with Google"),
                  ),

                  TextButton(
                    onPressed: () {
                      Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
                        context, RouteConstants.menuScreen, (route) => false,
                        arguments: "Guest",
                      ));
                    },
                    child: const Text("Login as Guest"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
