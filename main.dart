import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(scaffoldBackgroundColor: Colors.white),
      home:MyHomePage(),

    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? name,mail,x,y;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Profile Card",style: TextStyle(color: Colors.white),),actions: [IconButton(onPressed: (){setState(() {
        name=null;
        x=null;
        mail=null;
        y=null;


      });}, icon: Icon(Icons.delete),color: Colors.white,)],backgroundColor: Colors.teal,) ,
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(20),
        ),
    child: IconButton(onPressed: (){setState(() {
      name="Omar Yasser";
      x="Mobile Developer";
      mail="email@example.com";
      y="01111111111";


    });}, icon: Icon(Icons.add),color: Colors.white,),
      ),
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 500,
          decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(height: 30,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAlias,
                child:
                Image.network("https://cdn-icons-gif.flaticon.com/17905/17905521.gif",height: 200,width:200, ),

              ),
              SizedBox(height: 20,),
              if (name != null) Text(name!, style: TextStyle(fontSize: 40, color: Colors.white,)),
              if (x != null) SizedBox(height: 30),
              if (x != null) Text(x!, style: TextStyle(fontSize: 25, color: Colors.white)),
              if (mail != null) SizedBox(height: 30),
              if (mail != null) Text(mail!, style: TextStyle(fontSize: 25, color: Colors.white)),
              if (y != null) SizedBox(height: 30),
              if (y != null) Text(y!, style: TextStyle(fontSize: 25, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
