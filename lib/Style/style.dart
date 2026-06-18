import 'package:flutter/material.dart';

class Style1{

  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title: Text("Alert!"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          ));
        }
    );
  }

  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.amberAccent,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
      )
  );
  ButtonStyle buttonStyle1 = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.amberAccent
  );


}

