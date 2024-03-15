import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ThemeData.light().colorScheme;

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFF8b0000),
);
//var kDarkColorScheme = ThemeData.dark().colorScheme;

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (value) => {
        runApp(
          MaterialApp(
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kDarkColorScheme.background,
              colorScheme: kDarkColorScheme,
              cardTheme: CardTheme(
                color: kDarkColorScheme.brightness == Brightness.dark
                    ? kDarkColorScheme.surface
                    : kDarkColorScheme.onSecondaryContainer,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                    titleLarge: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    bodyMedium: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkColorScheme.primaryContainer,
                  foregroundColor: kDarkColorScheme.onPrimaryContainer,
                ),
              ),
            ),
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kColorScheme.background,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              cardTheme: CardTheme(
                color: kColorScheme.onSecondaryContainer,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                    titleLarge: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    bodyMedium: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
            ),
            themeMode: ThemeMode.system,
            home: const Expenses(),
          ),
        ),
    },
  );*/

  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kDarkColorScheme.background,
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme(
          color: kDarkColorScheme.brightness == Brightness.dark
              ? kDarkColorScheme.surface
              : kDarkColorScheme.onSecondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodyMedium: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodySmall: const TextStyle(color: Colors.white),
              bodyLarge: const TextStyle(color: Colors.white),
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white, // Define a cor do cursor como branco
          selectionColor: Colors.white, // Define a cor da seleção como branco
          selectionHandleColor:
              Colors.white, // Define a cor da alça de seleção como branco
        ),
      ),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kColorScheme.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.white),
        cardTheme: CardTheme(
          color: kColorScheme.onSecondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodyMedium: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodySmall: const TextStyle(color: Colors.white),
              bodyLarge: const TextStyle(color: Colors.white),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
