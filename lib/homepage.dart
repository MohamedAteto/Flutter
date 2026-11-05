import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        // leading: Drawer(),          //////////////
        // actions: [Icon(Icons.settings)],
        title: Text(
          "Profile Card",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          alignment: AlignmentGeometry.center,

          width: 450,
          height: 350,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(width: 3, color: Colors.teal),
            color: const Color.fromARGB(255, 232, 235, 237),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.account_circle, size: 100, color: Colors.teal),
                Text(
                  "Eng.Aya Shawky",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () => {},
                        icon: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.teal,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.chat, size: 16, color: Colors.white),
                              Text(
                                "Message",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: IconButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Second(),
                            ),
                          ),
                        },
                        icon: Container(
                          padding: EdgeInsets.all(6),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.call, size: 16, color: Colors.white),

                              Text(
                                "Call",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          ),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [Icon(Icons.settings)],
        title: Text(
          "Profile Challenge",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.account_circle, size: 100, color: Colors.orangeAccent),
            Text(
              "Eng.Aya Shawky",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
    );
  }
}
