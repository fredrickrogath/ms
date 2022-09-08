import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms/services/theme.dart';
import 'package:provider/provider.dart';
import 'package:ms/pages/homepage/homepage.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'db/objectbox_interface.dart';


late ObjectBox objectbox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // objectbox = await ObjectBox.create();


  // final savedThemeMode = await AdaptiveTheme.getThemeMode();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((val) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DarkMode()),
        // ChangeNotifierProvider(create: (_) => ItemProvider()),
      ],
      child: const MyApp(),
    ));

    //  AUTOMATIC HIDES THE STATUS AND BOTTOM MOBILE OVERLAY LAYERS

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     systemNavigationBarColor: Colors.transparent,
    //     systemNavigationBarIconBrightness: Brightness.light));
  });
}

// final darkNotifier = ValueNotifier<bool>(false);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FRS',
      // themeMode: context.watch<DarkMode>().getCurrentTheme
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      themeMode: ThemeMode.dark,
      theme: FlexThemeData.light(scheme: FlexScheme.hippieBlue),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue),
      // theme: ThemeData(primaryColor: Colors.blue),
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: 'FRS',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  bool wait = false;

  void waitForThemeInitialization() {
    // context.read<DarkMode>().getTheme();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        wait = true;
      });
    });
  }

  @override
  void initState() {
    waitForThemeInitialization();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return wait
        ? const HomePage()
        : const Center(
            child: CircularProgressIndicator.adaptive(),
          );
  }
}
