import 'package:bodylanguagepsychologysecrets/bottomnavigation.dart';
import 'package:bodylanguagepsychologysecrets/homepagelearn/homepage.dart';
import 'package:bodylanguagepsychologysecrets/tab_bar/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/theme_notifier.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool themeBool = prefs.getBool("isDark") ?? false;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(isDark: themeBool),
      child: MyApp(),
    ),
  );



}

class MyApp  extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// use GetIt or Provider rather than a global variable in a real project
//late final PageManager _pageManager;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
    return GetMaterialApp(

      title: 'Rise Philosophy',
      theme: themeProvider.getTheme,
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
    );

  }

}



///////

