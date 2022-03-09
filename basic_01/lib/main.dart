import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:  false,
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('BBANTO'),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          elevation: 0.0, // 쉐딩
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/flying.gif'),
                    radius: 60,
                  ),
                ),
                Divider(
                  height: 60,
                  color: Colors.grey[850],
                  thickness: 1.5,
                  endIndent: 30,
        
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'BBANTO',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  )
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'BBANTO POWER LEVEL',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0
                  )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '14',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  )
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline
                    ),
                    SizedBox(width: 10,),
                    Text('using lightsaber',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline
                    ),
                    SizedBox(width: 10,),
                    Text('fase hero tatto',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline
                    ),
                    SizedBox(width: 10,),
                    Text('fire flames',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                      ),
                    )
                  ],
                ),
                Center(
                  child: Image.asset(
                    'assets/bird02.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.fill,
                  )
                ),
                SizedBox(height: 30,)
              ],
            ),
            ),
        )
        );
  }
}
