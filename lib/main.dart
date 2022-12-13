import 'package:flutter/material.dart';
import 'package:travo_app/presentation/screen/splash_screen.dart';

import 'core/constants/color_palatte.dart';
import 'core/helpers/size_config.dart';

void main() {
  runApp(const TravoApp());
}

class TravoApp extends StatelessWidget {
  const TravoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travo App",
      theme: ThemeData(
          primaryColor: ColorPalette.primaryColor,
          scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
          backgroundColor: ColorPalette.backgroundScaffoldColor),
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          return const SplashScreen();
        },
      ),
    );
  }
}
