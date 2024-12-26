import 'package:animator/provider/planets_provider.dart';
import 'package:animator/utills/routes.dart';
import 'package:animator/views/detail/view/detail.dart';
import 'package:animator/views/favorite/view/favorite_page.dart';
import 'package:animator/views/home/view/home.dart';
import 'package:animator/views/splash/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'views/favorite/controller/favorite_contoller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: PlanetsProvider(),
        ),
        ChangeNotifierProvider.value(
          value: FavouriteController(shr: preferences),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splash: (context) => const SplashPage(),
        Routes.home: (context) => const HomePage(),
        Routes.detail: (context) => const DetailPage(),
        Routes.favorite: (context) => const FavouritePage(),
      },
    );
  }
}
