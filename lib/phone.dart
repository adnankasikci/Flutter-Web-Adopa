

import 'package:benimsite/Constants%20Data%20and%20Theme/constants.dart';
import 'package:flutter/material.dart';



class phone extends StatelessWidget {
  const phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ColorConstants.instance.TitanicYellow,
        ),
        Center(
          child: Text(
              "Telefona Uyumlu Değildir! "+'\n'+"Açmak için farklı bir  cihaz ile deneyin :)",
            style: Theme.of(context).textTheme.headline5,textAlign: TextAlign.center,)
        ),

      ],
    );
  }
}
