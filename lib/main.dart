// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MainApp(),
));

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text("Idee.",style: TextStyle(color: Colors.amber.shade400,fontSize:30),),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800 ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            a++;
          });
        },
        backgroundColor: Colors.grey.shade600,
        child: Icon(Icons.add,size: 30,),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'),
                radius: 70,
              ),
            ),
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[800],
            ),
            Text('NAME', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey.shade600,letterSpacing: 2),),
            SizedBox(height: 10,),
            Text('Prudhvi', style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.amber.shade600,letterSpacing: 1.2),),
            SizedBox(height: 40,),
            Text('E-MAIL', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey.shade600,letterSpacing: 2),),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.email, size: 30,),
                SizedBox(width: 10,),
                Text('prudhvisuraaj@gmail.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey.shade400,letterSpacing: 1),)
              ],
            ),
            SizedBox(height: 40,),
            Text('LEVEL', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey.shade600,letterSpacing: 2),),
            SizedBox(height: 10,),
            Text('$a', style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.amber.shade600,letterSpacing: 1.2),),
            SizedBox(height: 40,),
            Text('INSTITUTION', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey.shade600,letterSpacing: 2),),
            SizedBox(height: 10,),
            Text('AU', style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.amber.shade600,letterSpacing: 1.2))],
        ),
      )
    );
  }
}
