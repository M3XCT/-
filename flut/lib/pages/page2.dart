import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
        child:Container(
          child:Column(
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                  child:Column(
                    children: [
                      Row(children: [Image(image: AssetImage('assets/138427_1.jpg'),width: 150, height: 150)]),
                      Row(children: [Text('8787мл ООО"лицо"')],),
                      Row(children: [Text('1000'+'р')],),
                      Row(children: [Text('Шампунь')],)
                    ],
                  )
                  ),
                ],
              )
            ],
          ),
        )
        )

    );
  }
}