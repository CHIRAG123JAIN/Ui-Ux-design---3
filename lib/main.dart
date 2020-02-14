import 'package:flutter/material.dart';
import 'shopPage.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(
            "images/splash.jpg"
          ),
          fit: BoxFit.cover,
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
          child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 20,),
              Text("Brand New Perspective.",style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30,),
               Text("Lets Start with our summer collections",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 100,),
              Container(
                height: 40,
                child: RaisedButton(
                  onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context)=>shopPage()));       

  },
                color: Colors.white,

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Align(
                  child: Padding(padding: EdgeInsets.fromLTRB(30,0,30,0),
                  child: Text("Get Start.",style: TextStyle(
                    fontSize: 20,
                    
                  ),),

                 
                  )
                
                ),
                )
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                child: RaisedButton(onPressed: (){},
                color: Colors.white,

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Align(
                  child: Padding(padding: EdgeInsets.fromLTRB(30,0,30,0),
                  child: Text("Create Account.",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),),

                 
                  )
                
                ),
                )
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}