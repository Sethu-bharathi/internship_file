import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static final id = "Profilescreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    image: DecorationImage(fit:BoxFit.contain,
                      image:AssetImage("images/pikachu.png"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        Icon(Icons.settings),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: new Stack(
                children: [
                  Positioned(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Andy 24",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "@andyandy13",
            ),
            Profilecard(name: "SERGEY BYKOV",like:"LIKED 4 PHOTOS BY YOU",mins:"15 MIN AGO"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children:[
                Posts(),
                SizedBox(
                  width:20.0
                ),
                Posts(),
                SizedBox(
                  width:20.0
                ),
                Posts(),
                SizedBox(
                  width:20.0
                ),
                Posts(),
              ],),
            ),
            Profilecard(name: "SAM",like:"IS NOW FOLLOWING YOU",mins:"30 MIN AGO"),
            Profilecard(name: "ARSENY GREY",like:"IS NOW FOLLOWING YOU",mins:"35 MIN AGO"),
          ],
        ),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image(fit:BoxFit.contain,
      image:AssetImage("images/pikachu.png"),),
      width:45.0,
      height:45.0,
      color:Colors.purple,
      );
  }
}

class Profilecard extends StatelessWidget {
  final String name, like, mins;
  const Profilecard({this.name, this.like, this.mins});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23.0,
            child:Image(
              image:AssetImage("images/evy.jfif")
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(like,
                  style: TextStyle(
                    fontSize: 10.0,
                  ))
            ],
          ),
          SizedBox(width: 220),
          Text(mins, style: TextStyle(fontSize: 10.0)),
        ],
      ),
    );
  }
}
