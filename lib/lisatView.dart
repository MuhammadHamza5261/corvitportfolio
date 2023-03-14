import 'package:flutter/material.dart';
class listViewBuilder extends StatefulWidget {
  const listViewBuilder({Key? key}) : super(key: key);

  @override
  State<listViewBuilder> createState() => _listViewBuilderState();
}

class _listViewBuilderState extends State<listViewBuilder> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
        body:SafeArea(
          child: Column(
            children: [
             /// 1st listViewBuilder
              Container(
                height: 250,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index){
                    return Container(
                      color: Colors.blue,
                      height: 200,
                      width: 150,

                      child: Column(
                        children: [
                          ///Image
                          Container(
                              height: 100,
                              child: Image.asset("Assists/Images/burger2.png")),
                          ///Text
                          Text("data"),
                        ],
                      ),
                    );
                  },
                ),
              ),
              ///2nd list view builder 
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (BuildContext context,index){
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset('Assists/Images/burger2.png'),
                            ),
                            Container(
                              child: Text('Petty Burger',
                                style: TextStyle(
                                  fontSize: 27.0,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),



                      );

                    },
              ),
              ),
              
            ],
          ),
          
            
        ),
      ),
    );
  }
}
