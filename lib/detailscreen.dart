import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreenPage extends StatefulWidget {
  const DetailScreenPage({Key? key}) : super(key: key);

  @override
  State<DetailScreenPage> createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
        children:[
        Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 300,),
                Text("Saturn",style: TextStyle(
                    fontSize: 46,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Avenir",
                ),),
                Text("Solar System",style: TextStyle(
                  fontSize: 26,
                  fontFamily: "Avenir",
                ),),
                Divider(color: Colors.black,),
                SizedBox(height: 12,),
                Text("refer to the means of communication used by people. Speech is the expression of ideas and thoughts by means of articulate vocal sounds, or the faculty of thus expressing ideas and thoughts.",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Avenir",
                ),),
                SizedBox(height: 12,),

                Divider(color: Colors.black,),

                Expanded(child: buildGalleyView())
              ],

            ),
          ),

          Positioned(
            height: 300,
           right: -64,
              child: Hero(
                tag: "mars0",
                  child: Image.asset("assets/mars.png",))),
          Positioned(
              top: 60,
              left: 42,

              child: Text("4",style: TextStyle(fontSize: 247,
                  fontFamily: "Avenir",
                color: Colors.black.withOpacity(0.08),
                fontWeight: FontWeight.w900
              ),))
      ],
      ),
    )
    );
  }
}

class buildGalleyView extends StatelessWidget {
  const buildGalleyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Text("Gallery",style: TextStyle(
          fontSize: 24,
          fontFamily: "Avenir",
       fontWeight: FontWeight.w500
        ),),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("assets/saturn2.webp"))
                ),
              );
              }),
        )

      ],

    );
  }
}
