import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

// extension CustomColorSchemeX on ColorScheme {
//   Color? get smallBoxColor1 =>
//       brightness == Brightness.light ? Colors.blue : Colors.grey[400];
// }

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      tabBarTheme: const TabBarTheme(
        labelColor: Color.fromARGB(255, 134, 150, 160),
        unselectedLabelColor: Color.fromARGB(255, 251, 251, 251),
      ),
      iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255), opacity: 0.8),
      cardColor: Color.fromARGB(255, 32, 44, 51),
      secondaryHeaderColor: Color.fromARGB(255, 39, 154, 192),
      dividerColor: Color.fromARGB(255, 42, 57, 66));

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    cardColor: Color.fromARGB(255, 240, 242, 245),
    secondaryHeaderColor: Color.fromARGB(255, 39, 154, 192),
    iconTheme:
        const IconThemeData(color: Color.fromARGB(255, 0, 0, 0), opacity: 0.8),
    dividerColor: Color.fromARGB(255, 233, 237, 239),
  );
  // tabBarTheme: TabBarTheme(labelColor: Colors.white),
}
