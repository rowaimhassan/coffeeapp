import 'package:coffee_app/screens/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                'assets/image.png',
                fit: BoxFit.cover,
                height: double.infinity, // Ensure the image covers the height of the container
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Center(
                      heightFactor: 5,
                      child: Text(
                        'Coffee Shop',
                        style:GoogleFonts.pacifico(
                          fontSize:50,color:Colors.white
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children:[
                      Text(
                       'Feeling Low? Take a Sip of Coffee',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
              SizedBox(height: 80,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>WelcomeScreen(),
                  ));
                },
                child: Center(
                  child: Container(
                    height: 60,
                    width: 200,
                    padding:EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                        child: Center(
                          child: Text('Get Start',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.white
                            ),
                          ),
                    ),

                  ),
                ),
              )

                    ]
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
