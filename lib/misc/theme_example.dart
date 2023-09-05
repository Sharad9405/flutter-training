
import 'package:flutter/material.dart';

void main(){
  runApp(const ThemeExample());
}



class ThemeExample extends StatelessWidget {
  const ThemeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Example',
      theme: themeData,
      supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 15,
          ),
          title: const Text('Theme Example', style: TextStyle(color: Colors.white),),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          color: Colors.white,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Custom Font', style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
                fontSize: 22,
              ),),

              const SizedBox(height: 10,),

              Image.asset('asset/flutter.png'),
              // Image.memory(bytes),
              // Image.file(file),
              // Image.network(src),

            ],
          ),

        ),
      ),
    );
  }
}

enum AppTheme {
  dark,
  light,
}


ThemeData _themeData = ThemeData();
AppTheme _appTheme = AppTheme.light;

AppTheme get appTheme => _appTheme;

ThemeData get themeData {
  // based on platform WidgetsBinding.instance.window.platformBrightness
  switch (_appTheme) {
    case AppTheme.dark:
    case AppTheme.light:
      _themeData = _themeData.copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.orange,
        // accentColor: AppColor.white,
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.blueAccent,
          ),
        ),
        primaryColorDark: Colors.blueAccent,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.blueAccent,
          selectionHandleColor: Colors.blueAccent,
          selectionColor: Colors.blueAccent,
        ),
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white.withOpacity(0.3),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            //contentPadding: EdgeInsets.zero,
            filled: false,
            border: InputBorder.none,
            isCollapsed: true,
            errorStyle: const TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            labelStyle: const TextStyle(
              fontFamily: "Poppins",
              color: Colors.black,
              fontSize: 18,
              height: 1.48,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            )),
        textTheme: _themeData.textTheme.apply(
            fontFamily: "Poppins",
            bodyColor: Colors.black,
            displayColor: Colors.black),
        primaryTextTheme: _themeData.textTheme.apply(
            fontFamily: "Poppins",
            bodyColor: Colors.white,
            displayColor: Colors.white),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        indicatorColor: Colors.white,
        buttonTheme: ButtonThemeData(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          textTheme: ButtonTextTheme.normal,
        ),
      );
      break;
  }

  return _themeData;
}