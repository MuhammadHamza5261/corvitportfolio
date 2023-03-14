import 'package:flutter/material.dart';
import 'package:project/getx2.dart';
class getx extends StatelessWidget {
  const getx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getxSTF(),
    );
  }
}
///stf
class getxSTF extends StatefulWidget {
  const getxSTF({Key? key}) : super(key: key);

  @override
  State<getxSTF> createState() => _getxSTFState();
}
 int counter = 0;

class _getxSTFState extends State<getxSTF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text('Numbers${counter}',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text('+',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => getx2(text:counter.toString())));
                    },
                    child: Text('Screen 2',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


