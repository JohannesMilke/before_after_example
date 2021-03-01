import 'package:before_after_example/widget/effect_horizontal_widget.dart';
import 'package:before_after_example/widget/effect_vertical_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Before After';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Before & After'),
          centerTitle: true,
        ),
        body: buildPages(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: index,
          onTap: (index) => setState(() => this.index = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_vert),
              label: 'Vertical',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: 'Horizontal',
            ),
          ],
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return EffectVerticalWidget();
      case 1:
      default:
        return EffectHorizontalWidget();
    }
  }
}
