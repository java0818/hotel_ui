import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'hotel_ui';
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/2222.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.3),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('What kind of hotel you need ?',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.black54),
                          hintText: 'Search fo hotels',
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18 ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            // #body
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Best hotls',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 24)),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/2108.jpg',title:'Best hotls'),
                        makeItem(image: 'assets/images/2103.jpg',title:'Best hotls'),
                        makeItem(image: 'assets/images/2101.jpg',title:'Best hotls'),
                        makeItem(image: 'assets/images/2104.jpg',title:'Best hotls'),
                        makeItem(image: 'assets/images/2105.jpg',title:'Best hotls'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Luxury hotls',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 24)),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/2106.jpg',title:'Luxury hotls'),
                        makeItem(image: 'assets/images/2107.jpg',title:'Luxury hotls'),
                        makeItem(image: 'assets/images/2109.jpg',title:'Luxury hotls'),
                        makeItem(image: 'assets/images/2110.jpg',title:'Luxury hotls'),
                        makeItem(image: 'assets/images/2111.jpg',title:'Luxury hotls'),
                      ],
                    ),
                  ),
                  //SizedBox(height: 5,),
                ],
              ),
            ),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hotls',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 24)),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/2112.jpg',title:'Hotel'),
                        makeItem(image: 'assets/images/2113.jpg',title:'Hotel'),
                        makeItem(image: 'assets/images/2114.jpg',title:'Hotel'),
                        makeItem(image: 'assets/images/2115.jpg',title:'Hotel'),
                        makeItem(image: 'assets/images/2109.jpg',title:'Hotel'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Villa',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 24)),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/2116.jpg',title:'Villa'),
                        makeItem(image: 'assets/images/2117.jpg',title:'Hot Villa'),
                        makeItem(image: 'assets/images/2118.jpg',title:'Villa 3'),
                        makeItem(image: 'assets/images/2119.jpg',title:'Villa'),
                        makeItem(image: 'assets/images/2120.jpg',title:'Rich'),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image,title}) {
    return  AspectRatio(
      aspectRatio: 1.4/1,
      child: Container(
        margin: EdgeInsets.only(right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
