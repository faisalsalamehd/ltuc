import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ltuc/core/router/routers.dart';
import 'package:ltuc/core/translations/locale_provider.dart';
import 'package:ltuc/counter_screen/counter_provider.dart';
import 'package:ltuc/counter_screen/counter_screen.dart';
import 'package:ltuc/presentation/screens/auth/signin/signin_provider.dart';
import 'package:ltuc/presentation/screens/home/home_provider.dart';
import 'package:ltuc/presentation/screens/splash/splash_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

class NewMyApp extends StatelessWidget {
  const NewMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: const MaterialApp(home: CounterScreen()),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocaleProvider()),
        ChangeNotifierProvider(create: (context) => SplashProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => SigninProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: context.watch<LocaleProvider>().locale,
        supportedLocales: const [Locale('en'), Locale('ar')],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: routes,

        // home: HomeScreen(),
      ),
    );
  }
}
