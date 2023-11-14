import 'package:flutter/material.dart';

class AppLocalized extends StatelessWidget {
  const AppLocalized({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Localizations.override(
              context: context,
              locale: const Locale('es'),
              child: Builder(
                builder: (context) {
                  return CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2200),
                    onDateChanged: (value) {},
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
