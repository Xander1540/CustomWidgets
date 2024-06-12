import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Custom Widgets'),
      ),
      body: Container(
          child: Column(
            children: [

              ListViewA(),

              ListViewB(),

              ListViewC(),

              GridViewA(),
            ],
          ),
      ),
   );
  }
}

class ListViewA extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.greenAccent,
        child: ListView.builder(itemBuilder: (context,index) =>
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/icon.jpg'),
            radius: 50,
          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class ListViewB extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blueAccent,
        child: ListView.builder(itemBuilder: (context, index){
          return ListTile(
            leading: Image.asset('assets/images/person.png'),
            title: Text('Name'),
            subtitle: Text('Phone Number'),
            trailing: Icon(Icons.delete_forever),
          );
        }, itemCount: 15,),
      ),
    );
  }
}

class ListViewC extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.orangeAccent,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red.shade100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red.shade200,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade300),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade400),
            )
          ],),
      ),
    );
  }
}

class GridViewA extends StatelessWidget{

  var arrColors = [Colors.amberAccent,
    Colors.blue,
    Colors.blueGrey,
    Colors.cyan,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.green,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.lime,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.yellow,
    Colors.lightBlue,];

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 2,
      child: Container(
          color: Colors.grey,
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
              itemBuilder: (context, index){
                return Container(
                    color: arrColors[index]);
              }, itemCount: arrColors.length)
      ),
    );
  }
}