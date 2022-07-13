import 'package:benimsite/Constants%20Data%20and%20Theme/extention.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constants Data and Theme/constants.dart';
import '../Constants Data and Theme/data.dart';




class Card_web extends StatefulWidget {
  const Card_web({Key? key}) : super(key: key);

  @override
  _Card_webState createState() => _Card_webState();
}

class _Card_webState extends State<Card_web> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        TopBar(),
        Middle(context)
      ],
    );
  }

  Padding Middle(BuildContext context) {
    return Padding(
          padding: PaddingConstants.instance.BigPad,
          child: Column(children: [
            Expanded(flex: 3, child: SizedBox()),
            Expanded(
                flex: 3,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        Bilgiler.instance.titleBarName[Bilgiler.instance.ImageCheckNumber - 1],
                        style: Theme.of(context).textTheme.headline2))),
            Expanded(
                flex: 1,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () async {
                        setState(() {
                          if(Bilgiler.instance.ImageCheckNumber==2 || Bilgiler.instance.ImageCheckNumber==3)
                          {launch(Bilgiler.instance.subtitleBarName[Bilgiler.instance.ImageCheckNumber-1]);}});},
                      child: Text(
                        Bilgiler.instance.subtitleBarName[Bilgiler.instance.ImageCheckNumber - 1],
                        style: Theme.of(context).textTheme.headline6,),
                    ))), //Google
            Expanded(
                flex: 10,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            Bilgiler.instance.ImageCheckNumber+=1;
                            if(Bilgiler.instance.ImageCheckNumber==5) {Bilgiler.instance.ImageCheckNumber=1;}});},
                        child: Container(
                            width: ContextExtension(context).dynwidth(0.1),
                            height: ContextExtension(context).dynmheight(0.175),
                            decoration: BoxDecoration(
                                gradient: ColorGradientConstants.instance.WhiteTransparant,
                                borderRadius: RadiusConstants.instance.ovalRad),
                            child: Icon(Icons.arrow_forward,
                                size: ContextExtension(context).dynwidth(0.04),
                                color: ColorConstants.instance.TransparantWhite))))),
            Expanded(
                flex: 1,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("0" + Bilgiler.instance.ImageCheckNumber.toString() + "/04",
                        style: Theme.of(context).textTheme.subtitle1))),
            Padding(padding: EdgeInsets.only(top: ContextExtension(context).dynwidth(0.01),)),
            Align(
                alignment: Alignment.centerLeft,
                child: Wrap(spacing:ContextExtension(context).dynwidth(0.01),children: [
                  Container(
                      width: ContextExtension(context).dynwidth(0.055),
                      height: ContextExtension(context).dynmheight(0.03),
                      decoration: BoxDecoration(
                        borderRadius: RadiusConstants.instance.ovalRad,
                          border: Border.all(
                              width: ContextExtension(context).dynwidth(1),
                              color: ColorConstants.instance.TransparantWhite),
                          color: Bilgiler.instance.ImageCheckNumber==1 ?ColorConstants.instance.TitanicYellow:ColorConstants.instance.TransparantWhite)),
                  Container(
                      width: ContextExtension(context).dynwidth(0.055),
                      height: ContextExtension(context).dynmheight(0.03),
                      decoration: BoxDecoration(
                          borderRadius: RadiusConstants.instance.ovalRad,
                          border: Border.all(
                              width: ContextExtension(context).dynwidth(1),
                              color: ColorConstants.instance.TransparantWhite),
                          color: Bilgiler.instance.ImageCheckNumber==2 ?ColorConstants.instance.TitanicYellow:ColorConstants.instance.TransparantWhite)),
                  Container(
                      width: ContextExtension(context).dynwidth(0.055),
                      height: ContextExtension(context).dynmheight(0.03),
                      decoration: BoxDecoration(
                          borderRadius: RadiusConstants.instance.ovalRad,
                          border: Border.all(
                              width: ContextExtension(context).dynwidth(1),
                              color: ColorConstants.instance.TransparantWhite),
                          color: Bilgiler.instance.ImageCheckNumber==3 ?ColorConstants.instance.TitanicYellow:ColorConstants.instance.TransparantWhite)),
                  Container(
                      width: ContextExtension(context).dynwidth(0.055),
                      height: ContextExtension(context).dynmheight(0.03),
                      decoration: BoxDecoration(
                          borderRadius: RadiusConstants.instance.ovalRad,
                          border: Border.all(
                              width: ContextExtension(context).dynwidth(1),
                              color: ColorConstants.instance.TransparantWhite),
                          color: Bilgiler.instance.ImageCheckNumber==4 ?ColorConstants.instance.TitanicYellow:ColorConstants.instance.TransparantWhite))
                ]))
          ]));
  }

  Container BackgroundImage() {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/background0" +
              Bilgiler.instance.ImageCheckNumber.toString() + ".jpg"),
          fit: BoxFit.fill),
      ),
    );
  }

  Padding TopBar() {
    return Padding(
        padding: PaddingConstants.instance.MediumPad,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(flex: 3, child: SizedBox()),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    setState(() {Bilgiler.instance.ImageCheckNumber = 1;});},
                  child: Text(Bilgiler.instance.topBarName[0].toString(),
                      style: TextStyle(color: ColorConstants.instance.ColorWhite)))),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    setState(() {Bilgiler.instance.ImageCheckNumber = 2;});},
                  child: Text(Bilgiler.instance.topBarName[1].toString(),
                      style: TextStyle(color: ColorConstants.instance.ColorWhite)))),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    setState(() {Bilgiler.instance.ImageCheckNumber = 3;});},
                  child: Text(Bilgiler.instance.topBarName[2].toString(),
                      style: TextStyle(color: ColorConstants.instance.ColorWhite)))),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    setState(() {Bilgiler.instance.ImageCheckNumber = 4;});},
                  child: Text(Bilgiler.instance.topBarName[3].toString(),
                      style: TextStyle(color: ColorConstants.instance.ColorWhite)))),
          Expanded(flex: 2, child: SizedBox()),
        ]));
  }

}


