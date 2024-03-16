import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/generated/l10n.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const FlutterLocalization());
}

class FlutterLocalization extends StatelessWidget {
  const FlutterLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this line used to change app language

      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const HomeView(),
    );
  }
}

// Directionality Widget can used to change widget direction , it's not the best practice to do that

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // we have file for each Language
        // Can't put value directly here because it will not change , we put it in l10n in a json file ,
        //then get value from the file by it's key

        title: Text(S.of(context).appBarTitle),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).hello,
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: isArabic() ? 0 : 16, right: isArabic() ? 16 : 0),
              child: Text(
                S.of(context).abdelrhman,
                style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
