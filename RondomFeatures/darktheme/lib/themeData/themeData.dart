import 'package:flutter/material.dart';

class Styles {
  static ThemeData customThemeData(bool isDarkTheme, BuildContext context) {
    final primaryColor = isDarkTheme ? Colors.blue : Colors.red;
    final backgroundColor = isDarkTheme ? Colors.black : Colors.white;

    return ThemeData(
      primarySwatch: primaryColor,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      indicatorColor: isDarkTheme ? Colors.yellow : Colors.green,
      hintColor: isDarkTheme ? Colors.grey : Colors.purple,
      highlightColor: isDarkTheme ? Colors.orange : Colors.pink,
      hoverColor: isDarkTheme ? Colors.teal : Colors.cyan,
      focusColor: isDarkTheme ? Colors.brown : Colors.deepOrange,
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Colors.grey[800] : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            buttonColor: isDarkTheme ? Colors.teal : Colors.red,
            textTheme: ButtonTextTheme.primary,
          ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: primaryColor,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: isDarkTheme ? Colors.white : Colors.black,
      ),
    );
  }
}
