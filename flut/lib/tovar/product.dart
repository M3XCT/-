import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key,
    required this.image,
    required this.title,
    required this.price,

  }) : super(key: key);
  final String image, title;
  final int price;

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
            Row(children: [Text(title)],),
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

