import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message,style: TextStyle(color: Colors.white,backgroundColor: Colors.green),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 0,
        title: Text("Hello Flutter This not",style: TextStyle(color: Colors.white,fontSize: 20),),
        actions: [
          IconButton(onPressed: (){MySnackBar("Hello", context);}, icon: Icon(Icons.add,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white))
        ],
      ),
      body: Center(
        child: Text("Hello",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}

