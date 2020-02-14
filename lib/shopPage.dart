
import 'package:flutter/material.dart';
class shopPage extends StatefulWidget {
  @override
  _shopPageState createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      resizeToAvoidBottomPadding: false,

      body: SingleChildScrollView(
      child:Column(
        children: <Widget>[
          
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                "images/background (1).jpg",
              ),
              fit: BoxFit.cover
              )
            ),
              child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [Colors.black.withOpacity(0.9) ,
            Colors.black.withOpacity(0.4)
                ])
              ),
              child:Padding(padding: EdgeInsets.only(top:50),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                        ),
                      ),

                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Our New Products.",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30
                        ),),
                        SizedBox(height: 30,),
                        Row(
                        
                          children: <Widget>[
                        Text("VIEW MORE",style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                          ],
                        )
                      ],
                        ),
                  )
                ],
                  ),
              ),
              ),
              
          ),
          Container(
            child: Padding(padding: EdgeInsets.all(20),
            child: Column(
            
              children: <Widget>[
                Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Categories",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                    Text("ALL")
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[ 
                    SizedBox(width: 2,),
                      pic(image:'images/beauty.jpg',title:'Beauty'),
                       pic(image:'images/watch.jpg',title:'Watch'),
                       pic(image: 'images/perfume.jpg',title:'Perfume'),
                       pic(image: 'images/clothes.jpg',title:'Clothes')
                    ],
                  ),

                ),
                SizedBox(height: 10,),
                Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Best Selling by Categories",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                    Text("ALL")
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[ 
                    SizedBox(width: 2,),
                      pic1(image:'images/tech.jpg',title:'Tech',
                      onPressed:Onpressed(){}   ),
                       pic1(image:'images/tech-1.jpg',title:'Phone'),
                    pic1(image: 'images/glass.jpg',title:'glass'),
                       pic1(image: 'images/person.jpg',title:'clothes')
                    ],
                  ),
                )
              ],

            ),
            ),
          )
                ],
              ),
      )
    );
          
        
  }
}
Widget pic({image,String title}){
 return  AspectRatio(aspectRatio: 2/2.2,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(
                            image
                          ),
                           fit: BoxFit.cover
                          )
                        ),
                        child:Container(
                          padding: EdgeInsets.all(20),
                          
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  gradient: LinearGradient(colors: 
  [Colors.black.withOpacity(.4) , Colors.black.withOpacity(.5)],
  )
),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(title,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),)
                          ],
                      ),
                      ),

                      ),
                      );
}
Widget pic1({image,String title}){
 return  AspectRatio(aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(
                            image
                          ),
                           fit: BoxFit.cover
                          )
                        ),
                        child:Container(
                          padding: EdgeInsets.all(20),
                          
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  gradient: LinearGradient(colors: 
  [Colors.black.withOpacity(.4) , Colors.black.withOpacity(.5)],
  )
),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(title,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),)
                          ],
                      ),
                      ),

                      ),
                      );
}