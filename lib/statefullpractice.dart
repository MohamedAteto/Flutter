import 'package:flutter/material.dart';

class Statefullpractice extends StatefulWidget {
  const Statefullpractice({super.key});

  @override
  State<Statefullpractice> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Statefullpractice> {
  // int counter = 0;
  bool toggled = false;
  String? SelectedValue = "Not of your business";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: toggled,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red,
              onChanged: (value) {
                toggled = value;
                setState(() {});
              },
            ),
            Visibility(child: Text("The switch in on !!"), visible: toggled),

            RadioListTile<String>(
              value: "Male",
              title: Text("Male"),

              groupValue: SelectedValue,

              onChanged: (context) {
                setState(() {
                  SelectedValue = context;
                });
              },
            ),

            RadioListTile<String>(
              title: Text("Female"),
              value: "Female",
              groupValue: SelectedValue,

              onChanged: (context) {
                setState(() {
                  SelectedValue = context;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

// child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             counter++;
//             setState(() {});
//           },
//           child: const Icon(Icons.add),
//         ),
//         const SizedBox(width: 30),
//         ElevatedButton(
//           onPressed: () {
//             if (counter > 0) {
//               counter--;
//               setState(() {});
//             }
//           },
//           child: const Icon(Icons.remove),
//         ),
//       ],
//     ),
//     const SizedBox(height: 20),

//     Expanded(
//       child: ListView.builder(
//         itemCount: counter,
//         itemBuilder: (context, index) {
//           return const ListTile2();
//         },
//       ),
//     ),
//   ],
// ),

class ListTile2 extends StatelessWidget {
  const ListTile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.tealAccent,
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: ListTile(
        leading: const Icon(Icons.home, size: 30, color: Colors.purple),
        title: const Text(
          // Fixed: Changed 'Title' to lowercase 'title'
          "ListTile using counter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text("Increase by Counter"),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
