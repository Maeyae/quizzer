import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}
class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[900],
            body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Expanded(flex: 5, child: Padding(
               padding: EdgeInsets.all(10),
               child: Center(
                 child: Text(
                  "question 1",
             style: TextStyle(color: Colors.white, fontSize: 25),
             ),
               ),
             ),
        ),
             Expanded(child: Padding(
             padding: const EdgeInsets.all(10.0),
    child: (
    ElevatedButton(
    child: Text(
    "vrai",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
      style: ElevatedButton.styleFrom(
       primary: Colors.green,
       onPrimary: Colors.white,
      ),
      onPressed: () {},
    )
    ),
    ),
             ),
             Expanded(child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: (
                   ElevatedButton(
                     child: Text(
                       "faux",
                       style: TextStyle(color: Colors.white, fontSize: 20),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.red,
                       onPrimary: Colors.white,
                     ),
                     onPressed: () {},
                   )
               ),
             ),
             ),
              Row(
             children: [
               Icon(
              Icons.close,
                   color:Colors.red,
                   size: 25.0
               ),

                Icon(
                    Icons.check,
                    color:Colors.green,size: 25.0
                ),
         ],
         ),

           ],
           ),
    ),



    ),
    );

  }
}