import 'package:flutter/material.dart';
// import 'package:flutter_application_1/loginpage.dart';
// import 'package:flutter_application_1/loginpagetask.dart';
// import 'package:flutter_application_1/signuptask.dart';
import 'package:flutter_application_1/statefullpractice.dart';
import 'package:flutter_application_1/statfulltask.dart';

// import 'customlitstile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: ScoreCounterScreen(),
    );
  }
}

//  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Challenges"),
//           backgroundColor: Colors.teal,
//           centerTitle: true,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: SizedBox(
//               width: double.infinity,
//               child: ListView(
//                 children: const [
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 1",
//                       subtitle: "This is the first challenge",
//                       leadingIcon: Icons.star,
//                       cardColor: Colors.yellow,
//                     ),
//                   ),
//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 2",
//                       subtitle: "This is the second challenge",
//                       leadingIcon: Icons.favorite,
//                       cardColor: Colors.redAccent,
//                     ),
//                   ),
//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),

//                   SizedBox(height: 12),
//                   Expanded(
//                     child: MyWidget(
//                       Title: "Challenge 3",
//                       subtitle: "This is the third challenge",
//                       leadingIcon: Icons.check_circle,
//                       cardColor: Colors.greenAccent,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
