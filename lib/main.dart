import 'package:flutter/material.dart';
import 'package:hisob_roject/app/app.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('uz'),
        Locale('uz', 'lat'),
      ],
      path: 'assets/i18n',
      fallbackLocale: const Locale('en'),
      child: const App(),
    ),
  );
}
