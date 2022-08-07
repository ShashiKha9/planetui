import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testsample/detailscreen.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff9354B9),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff0050ac),
                Color(0xff9354B9),
              ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
        stops: [0.1,0.8]
          )
        ),
        child: SafeArea(
            child:  Padding(
              padding: EdgeInsets.only(left: 40,top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Explore",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                    DropdownButton<Widget>(
                        items: [
                          DropdownMenuItem(child: Text("Solar System",style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),))
                        ],
                        onChanged: (value){},
                      icon: Icon(Icons.arrow_drop_down_sharp,color: Colors.deepOrangeAccent,),
                      underline: SizedBox(),
                        ),
                    SizedBox(
                      height: 20,
                    ),
                    SwipeCard(),

                  ],
                ),
            ),
            )),
      bottomNavigationBar: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.vertical(top: Radius.circular(36))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.category)),
            Text("Explore"),
            IconButton(onPressed: (){},
                icon: Icon(Icons.search)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.person))
          ],
        ),

      ),


    );
  }
}

class SwipeCard extends StatelessWidget {
  const SwipeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 400,
      child: Swiper(
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            activeSize: 10,
            size: 8
          )
        ),
          itemCount: 3,
        itemWidth: MediaQuery.of(context).size.width-2 *64,
        layout: SwiperLayout.STACK,
        itemBuilder: (context,index){
            return Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  children: [
                    SizedBox(height: 90,),
                    Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      elevation: 8,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 120,),
                            Text("Saturn",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                            Text("Solar System",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,)),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Know more",style: TextStyle(color: Colors.red,),),
                                Icon(Icons.navigate_next_outlined,color: Colors.red,)
                              ],
                            )

                          ],
                        ),
                      ),

                    )
                  ],
                ),
                InkWell(
                  onTap: ()=> Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> DetailScreenPage())),
                  child: Hero(
                    tag: new Text("mars0"),
                      child: Image.asset("assets/mars.png",height: 200,)),
                )
              ],
            );
        },
      ),
    );
  }
}
