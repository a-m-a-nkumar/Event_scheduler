import 'package:flutter/material.dart';
import './newevent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list=[

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event Scheduler',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(

          itemCount: _list.length,
            itemBuilder: ((context,index)=>_list[index])


        ),
        backgroundColor: Colors.deepPurpleAccent.shade100,
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: ()async{
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>newevent()));
                setState(() {
                  _list.add(
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                           boxShadow: kElevationToShadow[2],

                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(child: Text(newText,textAlign: TextAlign.center,)),
                        ),
                      ),
                    ));
                });
                },
              child: Icon(Icons.add,),
              backgroundColor: Colors.deepPurple,
            );
          }
        ),
      ),
    );
  }
}

