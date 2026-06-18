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



//homeActivity code start
//-----------------------
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  MyAlerDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alert!"),
                backgroundColor: Colors.white,
                shadowColor: Colors.amberAccent,
                content: Text("Do you want to delete"),
                actions: [
                  TextButton(onPressed: (){MySnackBar("Delete Success", context,);Navigator.of(context).pop();}, child: Text("Yes")),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No"))
                ],
              )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    
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
    var MyItemList=[
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
      {"image": "https://img.magnific.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?semt=ais_hybrid&w=740&q=80", "title": "Udoy Das"},
    ];
    
    
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        title: Text("Flutter App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: (){MySnackBar("This is search", context);}, icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){MySnackBar("This is settings", context);}, icon: Icon(Icons.settings,color: Colors.white,)),
          IconButton(onPressed: (){MySnackBar("This is notifications", context);}, icon: Icon(Icons.notifications,color: Colors.white,)),
          IconButton(onPressed: (){MySnackBar("This is contact_mail", context);}, icon: Icon(Icons.contact_mail,color: Colors.white,)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){MySnackBar("This is a Floating Button", context);},
        backgroundColor: Colors.green,
        shape: CircleBorder(),
        child: Icon(Icons.add,color: Colors.white,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.white,),label: "Settings"),
          ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amberAccent),
                accountName: Text("Udoy Das"),
                accountEmail: Text("email.com"),
                currentAccountPicture: Image.network("https://png.pngtree.com/thumb_back/fh260/background/20240522/pngtree-abstract-cloudy-background-beautiful-natural-streaks-of-sky-and-clouds-red-image_15684333.jpg"),
            ),
            ),
            ListTile(title: Text("home",style: TextStyle(color: Colors.black87),),leading: Icon(Icons.home,color: Colors.amberAccent,),),
            ListTile(title: Text("search",style: TextStyle(color: Colors.black),),leading: Icon(Icons.search,color: Colors.lightBlueAccent,),),
            ListTile(title: Text("security",style: TextStyle(color: Colors.black),),leading: Icon(Icons.security,color: Colors.orange,),),
            ListTile(title: Text("settings",style: TextStyle(color: Colors.black),),leading: Icon(Icons.settings,color: Colors.cyan,),),
          ],

        ),
      ),

      body: ListView.builder(
          itemCount: MyItemList.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onDoubleTap: (){MySnackBar(MyItemList[index]["title"], context);},
              child: Container(
                width: double.infinity,
                height: 200,
                child: Padding(padding: EdgeInsets.all(10),child: Image.network(MyItemList[index]["image"]!,fit: BoxFit.fill,),),
              ),
            );
          }
      )

    );
  }
}

