import 'package:flutter/material.dart';
import 'package:flut/tovar/product.dart';
import 'package:flut/widgets/search.dart';
class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          child:
         SingleChildScrollView(scrollDirection: Axis.vertical,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [SearchForm(),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Product(),
                  Product(),
                ],
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Product(),
              Product(),
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Product(),
                  Product(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Product(),
                  Product(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Product(),
                  Product(),
                ],
              ),

        ])
        )

    ));
  }
}

