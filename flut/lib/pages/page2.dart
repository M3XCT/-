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
              Column(
              children: List.generate(dem_product.length,(index) => Product
                (image: dem_product[index].image,
                  title: dem_product[index].title,
                  price: dem_product[index].price
              ),
              ),

              )])
        )

    ));
  }
}

