import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project/sampleScreen.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                print ('cart button clicked');
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>Corvit())
                );
              },
              child: Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 300),
                child: Card(
                  elevation: 10.0,
                  child: Icon(Icons.shopping_cart_sharp),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),

            Container(
              height: 700,
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext context, index){
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 300,
                          child: Card(
                            elevation: 20.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90.0),
                                bottomLeft: Radius.circular(90.0),
                              ),
                            ),
                            child: Container(
                              height: 450,
                              width: 400,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset('Assists/Images/red.png'),
                                  ),
                                  Container(
                                    child: Text(
                                      'Chocolate Bouqet',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    color: Colors.deepPurple,
                                    height: 2,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Column(


                                        children: [
                                          Text(
                                            ' 900 Rs.',
                                            style: TextStyle(fontSize: 25.0,
                                                fontWeight: FontWeight.w600),

                                          ),
                                          Row(

                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(

                                                  child: Text(
                                                    ' 4.6',
                                                    style: TextStyle(fontSize: 20.0),
                                                  )),
                                              Container(
                                                margin: EdgeInsets.only(),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow.shade800,
                                                    ),

                                                    Icon(Icons.star, color: Colors.yellow.shade800,),
                                                    Icon(Icons.star, color: Colors.yellow.shade800,),
                                                    Icon(Icons.star, color: Colors.yellow.shade800,),
                                                    Icon(Icons.star_half_outlined, color: Colors.yellow.shade800,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 35.0),
                                    height: 40,
                                    width: 200,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple,
                                          elevation: 15.0,
                                          shadowColor: Colors.deepPurpleAccent),
                                      onPressed: () {},
                                      child: Text('Add To Cart'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 40,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade300,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(90.0),
                              topRight: Radius.circular(90.0),
                              bottomRight: Radius.circular(10.0),                            ),

                          ),
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Container(
                              margin: EdgeInsets.only(left: 120),
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Agne',
                                ),
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('Discipline is the best tool'),
                                    TypewriterAnimatedText('Design first, then code'),
                                    TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                                    TypewriterAnimatedText('Do not test bugs out, design them out'),
                                  ],
                                  onTap: () {
                                    print("Tap Event");
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }

              ),
            ),

          ],

        ),

      ),
    );

  }
}