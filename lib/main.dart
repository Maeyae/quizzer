import 'package:flutter/material.dart';
import 'quizBrain.dart';


QuizBrain qb = QuizBrain();

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}
class _MyappState extends State<Myapp> {

  List<Icon> listescore =[
    Icon(
      Icons.check,
      color: Colors.green,
    ),

    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
 // List<String> questions = [
   // "Le piton des neiges est un volcan de la Réunion ?",
    //"Flutter permet de faire des applications web également ?",
   // "Php est le language utilisé par Flutter ?" ];
  //List<bool> reponses = [true, false, true];

int questionNumber = 0;
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
                 qb.questions[questionNumber].enonce,
             style: TextStyle(color: Colors.white, fontSize: 25),
             ),
               ),
             ),
        ),
             Expanded(child: Padding(
             padding: const EdgeInsets.all(10.0),
    child:
    ElevatedButton(
    child: Text(
    "vrai",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
      style: ElevatedButton.styleFrom(
       primary: Colors.green,
       onPrimary: Colors.white,
      ),
      onPressed: () {
      bool bonnereponse = qb.questions[questionNumber].reponse;
      setState(() {
        if(bonnereponse == true){
          listescore.add( Icon(Icons.check, color: Colors.green));

        }
        else{
          listescore.add( Icon(Icons.close, color: Colors.red));
        }
          questionNumber++; // questionNumber = questionNumber + 1 ;
      });
      }

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
                     onPressed: () {
                     bool bonnereponse = qb.questions[questionNumber].reponse;
    setState(() {
    if(bonnereponse == false){
    listescore.add( Icon(Icons.check, color: Colors.green));

    }
    else{
    listescore.add( Icon(Icons.close, color: Colors.red));
    }
    questionNumber++; // questionNumber = questionNumber + 1 ;
    });


  },
                   )
               ),
             ),
             ),
              Row(
             children: listescore

         ),

           ],
           ),
    ),



    ),
    );

  }
}