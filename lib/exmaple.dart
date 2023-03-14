import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8D7DB),
      body: exmapleSTF(),
    );
  }
}

class exmapleSTF extends StatefulWidget {
  const exmapleSTF({Key? key}) : super(key: key);

  @override
  State<exmapleSTF> createState() => _exmapleSTFState();
}

class _exmapleSTFState extends State<exmapleSTF> {
  late double height;
  late double width;

  List<String> Productnamelist=[
    'Chair',
    'Sofa',
    'Furniture',
    'Lamp',
    'Dressing',
  ];
  List<String> Productsizelist=[
    '6.6',
    '99.8',
    '86.9',
    '97.86',
    '97.86',
  ];
  List<String> Productpricelist=[
    '\$20.21',
    '\$32.21',
    '\$23.21',
    '\$10.21',
    '\$87.21',
  ];
  List<String> ProductImagelist=[
    'Assists/Images/audi.png',
    'Assists/Images/anar.png',
    'Assists/Images/anar.png',
    'Assists/Images/anar.png',
    'Assists/Images/anar.png',
  ];
  List<int> Productcartcount=[
    1,
    1,
    1,
    1,
    1,
  ];
  double sub=0;

  String baseUrl="https://prototype.analogenterprises.com/corvit/";

  double shipping=8.34;

  void getCartData() async{

    String url ="https://prototype.analogenterprises.com/corvit/getCartProducts.php";

    var result =await http.get(Uri.parse(url));

    var json = jsonDecode(result.body);

    // print(result.body);
    print(json[4]["productName"]);

    Productnamelist.clear();
    Productcartcount.clear();
    Productpricelist.clear();
    Productsizelist.clear();
    ProductImagelist.clear();
    Productcartcount.clear();

    for(int i=0 ; i<json.length ; i++){

      Productnamelist.add(json[i]["productName"]);
      Productpricelist.add(json[i]["productPrice"]);
      Productsizelist.add(json[i]["productSize"]);
      ProductImagelist.add(json[i]["productImage"]);
      Productcartcount.add(1);

      setState((){
        print("data Updated");
      });

    }

  }


  /// for subtotal
  String getSubTotal(){

    sub=0;

    for( int i=0; i<ProductImagelist.length; i++){

      double price = double.parse(Productpricelist[i]);
      double cart = Productcartcount[i] .toDouble();
      sub += (price * cart);

    }
    return sub.toStringAsFixed(2);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCartData();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  Container(
                    child: Text('Shopping Bag',style: TextStyle(
                      fontSize: 23.0,
                    ),),
                  ),
                  Stack(
                    children: [
                      Container(
                        child: Text('4'),
                      ),
                      Container(
                        child: Icon(Icons.shopping_bag,size: 30.0,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Container(
            height: height*0.40,
            child: ListView.builder(
              itemCount: Productnamelist.length,
              itemBuilder:(BuildContext context, index){
                return Container(
                  margin: EdgeInsets.only(top: 25.0,),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0,),
                        width: width*0.19,
                        height: height*0.1,

                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
                          child: Image.network(
                            baseUrl+ProductImagelist[index],
                        ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10.0,),
                            child: Text(
                           Productnamelist[index]

                ,style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0,top: 3.0,),          
                            child: Text(
                Productsizelist[index]

                ,style: TextStyle(
                              fontSize: 12.0,
                            ),),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                  child: Text('\$19.87',style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w800,
                                  ),),
                                ),
                InkWell(
                onTap: (){
                if(Productcartcount[index]>1){
                setState((){
                Productcartcount[index]--;
                });

                }



                },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 100.0,),
                                    child: Container(
                                      child: Icon(Icons.remove_circle_outline_sharp),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: width*0.02),
                                  child: Text(
                                    Productcartcount[index].toString(),
                                    style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    ///set state page ko khud refresh karwata ha
                                    setState((){
                                      Productcartcount[index]++;
                                    });
                                  },
                                  child: Container(
                                    width: width*0.085,
                                    height: width*0.085,
                                    child: Card(
                                      color: Colors.black,
                                      elevation: 7.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),


                        ],
                      ),

                    ],
                  ),
                );
              },
            ),
          ),
            ///cupon Area
            Container(
              width: width*0.8,
              height: height*0.08,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Row(
                children: [
                  Container(
                    width: width*0.47,
                    margin: EdgeInsets.only(left: width*0.04),
                    child: TextField(
                      autofocus: false,
                      style: TextStyle(
                        fontFamily: 'poppins',
                      ),
                      decoration: InputDecoration(
                        hintText: 'Promo Code',
                        helperStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            color: Colors.grey.shade400
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: height*0.053,
                    width: width*0.24,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                      ),
                      onPressed: (){},
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Subtotal',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                    ),
                  ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('\$'+getSubTotal(),
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '  USD',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.002,
              width: width*0.8,
              color: Colors.white,
              margin: EdgeInsets.only(top: height*0.014),
            ),
            Container(
              margin: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Shipping',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('\$7.2',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '  USD',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.002,
              width: width*0.8,
              color: Colors.white,
              margin: EdgeInsets.only(top: height*0.014),
            ),
            Container(
              margin: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Bag Total',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width*0.02),
                        child: Text(
                          '('+(Productnamelist.length).toString()+' '
                              'items)  ',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '\$'+(sub+shipping).toStringAsFixed(2),
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '  USD',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.002,
              width: width*0.8,
              color: Colors.white,
              margin: EdgeInsets.only(top: height*0.014),
            ),
            Container(
              width: width*0.8,
              height: height*0.07,
              margin: EdgeInsets.only(top: height*0.03),
              child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87,
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  )
                ),
                  child: Text('Processed to Checkout'),
            ),
            ),

          ],
        ),
      ),

    );
  }
}

