import 'package:flutter/material.dart';
class Product extends StatelessWidget {
  const Product({Key? key,
    required this.image,
    required this.title,
    required this.price,
    ///required this.press,
  }) : super(key: key);
  final String image, title;
  final int price;
 /// final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            border: Border.all(width: 4,),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child:Column(
          children: [
            Row(children: [Image.asset(image,width: 150, height: 150)]),
            Row(children: [Text(title),]),
            Row(children: [Text(price.toString()+'р')],),
            Row(children: [ElevatedButton(onPressed: (){}, child:Text('Купить'),style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)))
            )
            ),


              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26)
                ),
                child: Text('i'),
              )
            ],
            ),


          ],
        )
    );
  }
}
List<Product> dem_product = [

  Product(image: "assets/138427_1.jpg",
      title: "Шампунь",
      price: 55,),
   /// press: ,),
  Product(image: "assets/700-nw.jpg",
title: "Мыло",
  price: 999,),
 /// press: ,),
  Product(image: "assets/c3e20068f68ca596d7d11ffb09cv--kosmetika-ruchnoj-raboty-marselskoe-olivkovoe-naturalnoe-mylo.jpg",
      title: "Мыльцо",
      price: 23,),
     /// press: ,),
  Product(image: "assets/c34f8bb25924c8028cd35a862c3a--kosmetika-ruchnoj-raboty-mylo-olivkovoe.jpg",
      title: "ДМ",
      price: 111,)
 ///press: ,)
];
