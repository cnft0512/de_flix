import 'package:clone_netflix/screen/home_screen.dart';
import 'package:clone_netflix/screen/more_screen.dart';
import 'package:clone_netflix/widget/bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController? controller;

  // @override
  // void changeTheme(BuildContext context, bool isDark) {
  //   ThemeData darkTheme = ThemeData.dark();
  //   ThemeData lightTheme = ThemeData.light();
  //
  //   final ThemeData themeData = isDark ? darkTheme : lightTheme;
  //   MaterialApp app = MaterialApp(
  //     theme: themeData,
  //     home: MyApp(),
  //   );
  //   runApp(app);
  // }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData();
    return MaterialApp(
      title: 'de_flix',
      debugShowCheckedModeBanner: false,
      theme: themeData.copyWith(
        primaryColor: Colors.black,
        colorScheme:
            themeData.colorScheme.copyWith(secondary: Colors.deepOrange),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(
                  child: Text('Search'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Save'),
                ),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
