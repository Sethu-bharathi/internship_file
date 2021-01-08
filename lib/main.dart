
import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage(),
      initialRoute:Homepage.id,
      routes:{
      Homepage.id:(context)=>Homepage(),
      ProfileScreen.id:(context)=>ProfileScreen(),
    });
  }
}
class Homepage extends StatelessWidget {
  static final id="MyhomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back,
          ),
          Text(
            "Breakfast",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.pinkAccent[100],
          ),
          child: Center(
            child: Image(
              image: NetworkImage(""),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(
              one: "340 kcal",
              two: "Calories",
            ),
            text(one: "6.4 g", two: "Carbs"),
            text(one: "15.9 g", two: "Protein"),
            text(one: "20.3 g", two: "Fats"),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      cards(
          a: "Tomatoes Cherry",
          b: "14 kcal",
          c: "60 g",
          d: Colors.purpleAccent[100]),
          SizedBox(
            height: 20.0,
          ),
          cards(a:"Avacodo",
          b:"48kcal",
          c:"30 g",
          d:Colors.greenAccent[100],
          ),
          SizedBox(
            height: 20.0,
          ),
          cards(a:"Cheese Bree" ,
          b:"76kcal",
          c:"20 g",
          d:Colors.purpleAccent[100]),
    ]));
  }
}

class text extends StatelessWidget {
  final String one, two;
  text({this.one, this.two});
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Text(one,
            style: TextStyle(fontWeight: FontWeight.bold,)),
        Text(two),
      ],
    ));
  }
}

class cards extends StatelessWidget {
  final String a, b, c;
  final Color d;
  cards({this.a, this.b, this.c, this.d});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height:80,
        decoration: BoxDecoration(
          color: d,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  a,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  b,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                )
              ]),
            ),
            Row(
              children: [
                SizedBox(
                  width:17.0
                ),
                Text(c,
                style: TextStyle(
                  fontSize:15.0,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
