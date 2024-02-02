import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:translate/ui/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: const [
      Locale('uz', 'UZ'),
      Locale('en', 'EN'),
    ],
    path: 'assets/traslations',
    useOnlyLangCode: true,
    fallbackLocale: const Locale('en', 'EN'),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
