// import 'package:acm_project_2/widgets/text_button.dart';
// import 'package:flutter/material.dart';
//
// class Settings extends StatelessWidget {
//   final VoidCallback toggleTheme;
//   final bool isDarkTheme;
//
//   Settings({required this.toggleTheme, required this.isDarkTheme});
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     var isDarkTheme;
//     var toggleTheme;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               const SizedBox(height: 20),
//               const Text(
//                 'Theme',
//                 style: TextStyle(fontSize: 20),
//               ),
//               const SizedBox(height: 10),
//               ElevatedButton(
//                 onPressed: toggleTheme,
//                 child: Text(isDarkTheme ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Notifications',
//                 style: TextStyle(fontSize: 20),
//               ),
//               const SizedBox(height: 20),
//               TextCusButton(
//                 func: () {
//                 },
//                 text: "Advanced Settings",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// import 'package:flutter/material.dart';
// import 'package:acm_project_2/widgets/text_button.dart';
//
// class Settings extends StatelessWidget {
//   final VoidCallback toggleTheme;
//   final bool isDarkTheme;
//
//   Settings({required this.toggleTheme, required this.isDarkTheme});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               const SizedBox(height: 20),
//               const Text(
//                 'Theme',
//                 style: TextStyle(fontSize: 20),
//               ),
//               const SizedBox(height: 10),
//               ElevatedButton(
//                 onPressed: toggleTheme,
//                 child: Text(isDarkTheme ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Notifications',
//                 style: TextStyle(fontSize: 20),
//               ),
//               const SizedBox(height: 20),
//               TextCusButton(
//                 func: () {
//                   // Define what the button should do
//                 },
//                 text: "Advanced Settings",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:acm_project_2/widgets/text_button.dart';

class Settings extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkTheme;

  const Settings({super.key, required this.toggleTheme, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                'Theme',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed'); // Debug statement
                  toggleTheme();
                },
                child: Text(isDarkTheme ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Notifications',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextCusButton(
                func: () {
                  // Define what the button should do
                },
                text: "Advanced Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


