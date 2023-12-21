import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza_ecommerce/pages/splash/splash_pages.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

ValueNotifier<bool> isChangeTheme = ValueNotifier(true);
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isChangeTheme,
      builder: (BuildContext context, bool value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: value ? ThemeMode.light : ThemeMode.dark,
          darkTheme: ThemeData(
            iconTheme: IconThemeData(color: CupertinoColors.white),
            scaffoldBackgroundColor: Color(0xFF000000),
            textTheme: Typography(platform: TargetPlatform.iOS).white,
          ),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            textTheme: Typography(platform: TargetPlatform.iOS).black,
          ),
          home: const SplashPages(),
        );
      },
    );
  }
}
