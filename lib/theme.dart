import 'package:flutter/material.dart';


// Define your onSurface color as a separate variable
const Color myOnSurfaceColor =
    Color.fromRGBO(108, 14, 228, 1); // You can change this color as needed

// Define light theme
final ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    // Define the 'titleLarge' text style
    titleLarge: TextStyle(
      fontFamily: 'SFProDisplay', //'SFProDisplay', // Custom font
      fontSize: 30, // Font size
      fontWeight: FontWeight.w700, // Font weight (700 is bold)
      height: 1.2, // Line height (line-height)
      letterSpacing: 0.41, // Letter spacing
      color: Colors.black, // Text color (you can change this as needed)
      decoration: TextDecoration.none,
      decorationThickness: 2.0, // Decoration thickness, for underlines
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color.fromRGBO(11, 206, 131, 1), // Primary color
    onPrimary: Color.fromRGBO(45, 12, 87, 1), // Text color on primary
    secondary: Color.fromRGBO(149, 134, 168, 1), // Secondary color
    onSecondary: Color.fromRGBO(108, 14, 228, 1), // Text color on secondary
    surface: Color.fromARGB(255, 239, 239, 239), //rgba(246, 245, 245, 1) Light surface color
    onSurface: myOnSurfaceColor, // Use the variable for onSurface color
    error: Colors.red,
    onError: Colors.white,
    tertiary: Color.fromRGBO(149, 134, 168, 1), // Tertiary color
  ),
);

// Define dark theme
// final ThemeData darkTheme = ThemeData(
//   textTheme: TextTheme(
//     // Define the 'titleLarge' text style for dark theme
//     titleLarge: TextStyle(
//       fontFamily: 'SFProDisplay', // Custom font
//       fontSize: 34, // Font size
//       fontWeight: FontWeight.w700, // Font weight (700 is bold)
//       height: 1.2, // Line height (line-height)
//       letterSpacing: 0.41, // Letter spacing
//       color: Colors.white, // Text color (you can change this as needed)
//       decoration: TextDecoration.none,
//       decorationThickness: 2.0, // Decoration thickness, for underlines
//     ),
  
