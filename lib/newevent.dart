import 'package:flutter/material.dart';

class newevent extends StatefulWidget {
  const newevent({Key? key}) : super(key: key);

  @override
  State<newevent> createState() => _neweventState();
}

class _neweventState extends State<newevent> {
  final TextEditingController _textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               style: TextStyle(color: Colors.white),
                minLines: 1,
               maxLines: 10,
               keyboardType: TextInputType.multiline,
               //style: TextStyle(backgroundColor: Colors.deepPurple,color: Colors.white,),
               controller: _textEditingController,
               decoration: InputDecoration(
                 filled: true,

                 fillColor: Colors.deepPurple,
                 label: Text('Event',style: TextStyle(color: Colors.white),),
                 prefixIcon: Icon(Icons.edit_calendar_outlined,color: Colors.white,),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(40)
                 )
               ),
             ),
           ),
          Builder(
            builder: (context) {
              return ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 350),
                child: ElevatedButton(

                    onPressed:(){
                  String newEventText=_textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                } ,
                    child: Text('Add'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.deepPurple.shade200,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )
                  ),

                ),
              );
            }
          )
        ],
      ),
      backgroundColor: Colors.deepPurpleAccent.shade100,


    );
  }
}
