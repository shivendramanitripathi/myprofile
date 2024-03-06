import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myProfile/main.dart';
import 'package:myProfile/screen/Certificate/Controller/CertificateDetails.dart';
import 'package:myProfile/screen/onBoardingScreen/Splash.dart';
import 'package:myProfile/utils/constants.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(
          bodyColor: Colors.white,
        )
            .copyWith(
          bodyText1: const TextStyle(color: bodyTextColor),
          bodyText2: const TextStyle(color: bodyTextColor),
        ),
      ),
      home: const SplashView(),
      navigatorKey: Provider.of<NavigationProvider>(context).navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Placeholder());
      },
    );
  }
}