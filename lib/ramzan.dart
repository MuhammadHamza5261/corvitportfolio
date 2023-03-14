import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ramzan extends StatelessWidget {
  const ramzan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shoppingcartSTF(),
    );
  }
}


class shoppingcartSTF extends StatefulWidget {
  const shoppingcartSTF({Key? key}) : super(key: key);

  @override
  State<shoppingcartSTF> createState() => _shoppingcartSTFState();
}

class _shoppingcartSTFState extends State<shoppingcartSTF> {

  late double height;
  late double width;

  List<String>ProductNameList=[
    'Perfume1',
    'Perfume2',
    'Perfume3',
    'Perfume4',
    'Perfume5',
    'Perfume6',
  ];

  List<String>ProductPriceList=[
    '10.43',
    '20.23',
    '30.56',
    '40.93',
    '50.34',
    '60.78',
  ];

  List<String>ProductSizeList=[
    'Size :7.60 fl oz/225ml',
    'Size :3.60 fl oz/255ml',
    'Size :8.60 fl oz/345ml',
    'Size :1.60 fl oz/25ml',
    'Size :4.60 fl oz/265ml',
    'Size :4.60 fl oz/265ml',
  ];

  List<String>ProductImageList=[
    'assets/Images/perfume.jpg',
    'assets/Images/perfume 2.jpg',
    'assets/Images/perfume3.jpg',
    'assets/Images/perfume4.webp',
    'assets/Images/perfume5.jpg',
    'assets/Images/perfume6.jpg',

  ];

  List<int>ProductCartCountList=[
    1,
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

    ProductNameList.clear();
    ProductCartCountList.clear();
    ProductPriceList.clear();
    ProductImageList.clear();
    ProductSizeList.clear();

    for(int i=0 ; i<json.length ; i++){

      ProductNameList.add(json[i]["productName"]);
      ProductPriceList.add(json[i]["productPrice"]);
      ProductSizeList.add(json[i]["productSize"]);
      ProductImageList.add(json[i]["productImage"]);
      ProductCartCountList.add(1);

      setState((){
        print("data Updated");
      });

    }

  }


  /// for subtotal
  String getSubTotal(){

    sub=0;

    for( int i=0; i<ProductPriceList.length; i++){

      double price = double.parse(ProductPriceList[i]);
      double cart = ProductCartCountList[i] .toDouble();
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade200,
        child:SafeArea(
          child: Column(
            children: [
              ///Container 1
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      child: Text('Shopping Bag',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      height: 50,
                      width: 50,

                      child: Icon(Icons.add_shopping_cart_rounded),
                    ),
                  ],
                ),
              ),
              ///Container Cart items
              Container(
                height: height*0.40,
                child: ListView.builder(
                  itemCount: ProductNameList.length,
                  itemBuilder: (BuildContext context ,index){
                    return  Container(
                      margin: EdgeInsets.only(top: height*0.01 ,left: width*0.03),
                      child:Row(
                        children: [
                          Container(
                            height: 90,
                            width: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                baseUrl+ProductImageList[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Text( ProductNameList[index],
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(ProductSizeList[index],
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width*0.42,
                                        margin: EdgeInsets.only(top: 8),
                                        child: Text('\$'+ProductPriceList[index],
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // margin: EdgeInsets.only(left: width*0.26),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                if(ProductCartCountList[index]>1)

                                                  setState((){
                                                    ProductCartCountList[index]--;
                                                  });
                                              },
                                              child: Container(
                                                child: Icon(Icons.remove_circle_outline,size: 30,),
                                              ),
                                            ),
                                            Container(
                                              child: Text(ProductCartCountList[index].toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),

                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                setState((){
                                                  ProductCartCountList[index]++;
                                                });
                                              },
                                              child: Container(
                                                child: Icon(Icons.add_circle,size: 30,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              ///3rd Container
              /// Cupon Area
              Container(
                margin: EdgeInsets.only(top: height*0.04),
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
              ///4th Container
              ///SubTotal Area
              Container(
                margin: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Subtotal',
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
                          child: Text(
                            '\$'+getSubTotal(),
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
              ///Shipping Total Area
              Container(
                margin: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Shiopping',
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
                          child: Text(
                            '\$'+shipping.toString(),
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
              ///Total Area
              Container(
                margin: EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Bag Total',
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
                            '( '+(ProductNameList.length).toString()+' items)',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$'+(sub + shipping).toStringAsFixed(2),
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
              /// Checkout Area
              Container(
                width: width*0.8,
                height: height*0.07,
                margin: EdgeInsets.only(top: height*0.03),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Proceed To Checkout',
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
      ),
    );
  }
}