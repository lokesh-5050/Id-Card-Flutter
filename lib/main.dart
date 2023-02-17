
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  List<String> quotes = [
    "Whatever you are, be a good one.",
    "Be yourself; everyone else is already taken.",
    "Limit your always and your nevers.",
    "Sometimes you will never know the value of a moment, until it becomes a memory.",
    "Every accomplishment starts with the decision to try.",
    "Never regret anything that made you smile.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("Ninja Id"),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: quotes.map((q)=> Text(q , style: TextStyle(color: Colors.white) )).toList(),
      ),
      // body: Padding(

      //   padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       Center(
      //         child: CircleAvatar(
      //           backgroundImage: AssetImage('assets/avatar.jpg'),
      //           radius: 35.0,
      //         ),
      //       ),
      //       Divider(
      //         height: 40.0,
      //         color: Colors.grey[700],
      //       ),
      //       Text(
      //         'Home',
      //         style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 15.9),
      //       ),
      //       SizedBox(height: 10.0),
      //       Text(
      //         'Lokesh Mali',
      //         style: TextStyle(
      //             color: Colors.cyan,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.9),
      //       ),
      //       SizedBox(height: 30.0),
      //       Text(
      //         'Current Technology',
      //         style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 15.9),
      //       ),
      //       SizedBox(height: 10.0),
      //       Text(
      //         'Flutter',
      //         style: TextStyle(
      //             color: Colors.cyan,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.9),
      //       ),
      //       SizedBox(height: 30.0),
      //       Text(
      //         'Current level',
      //         style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 15.9),
      //       ),
      //       SizedBox(height: 10.0),
      //       Text(
      //         '$level',
      //         style: TextStyle(
      //             color: Colors.cyan,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.9),
      //       ),
      //       SizedBox(height: 30.0),
      //       Row(
      //         children: <Widget>[
      //           Container(
      //             child: Icon(
      //               Icons.mail,
      //               color: Colors.white,
      //             ),
      //           ),
      //           SizedBox(width: 10),
      //           Text(
      //             'zKing2842@gmail.com',
      //             style: TextStyle(
      //               color: Colors.white,
      //             ),
      //           )
      //         ],
      //       ),

      //     ],

      //   ),

      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
