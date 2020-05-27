import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:TestDemo/routes.dart';
import 'package:TestDemo/pages/home.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({
    Key key,
    this.initialRoute,
    this.isTestMode = false,
  }) : super(key: key);

  final bool isTestMode;
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check app',
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale.fromSubtags(languageCode: 'ja'),
        const Locale.fromSubtags(languageCode: 'zh')
      ],
      initialRoute: initialRoute,
      locale: Localizations.localeOf(context),
      // localeResolutionCallback: (locale, supportedLocales) {
      //   deviceLocale = locale;
      //   return locale;
      // },
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
      builder: (context, navigator) {
        return 
      },
    );
  }
}


class RootPage extends StatelessWidget {
  const RootPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
