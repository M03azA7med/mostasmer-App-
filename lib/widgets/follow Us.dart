import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class Follow_us extends StatelessWidget {
  const Follow_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text('${tr('follow_us')}',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width*0.08,
                child: Image.asset('assets/images/X Logo.png')),
            SizedBox(width: 10,),
            Container(
                width: MediaQuery.of(context).size.width*0.08,
                child: Image.asset('assets/images/Logo Instagram.png')),
            SizedBox(width: 10,),
            Container(
                width: MediaQuery.of(context).size.width*0.08,
                child: Image.asset('assets/images/Logo YouTube.png')),
            SizedBox(width: 10,),
            Container(
                width: MediaQuery.of(context).size.width*0.08,
                child: Image.asset('assets/images/LinkedIn.png')),
          ],
        ),


      ],
    );
  }
}
