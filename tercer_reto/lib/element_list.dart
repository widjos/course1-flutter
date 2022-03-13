import "package:flutter/material.dart";
import 'package:tercer_reto/element_mine.dart';

class ElementList extends StatelessWidget {
  get crossAxisAlignment => null;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ElementMine("assets/img/hutao.png", "Hu Tao", "Polearm","assets/img/pyro.png","C1","SS"),
        ElementMine("assets/img/ayaka.png", "Kamisato Ayaka", "Sword","assets/img/cryo.png","C0","SS"),
        ElementMine("assets/img/ganyu.png", "Ganyu", "Bow","assets/img/cryo.png","C1","SS"),
        ElementMine("assets/img/ito.png", "Itto", "Claymore","assets/img/geo.png","C2","SS"),
        ElementMine("assets/img/raiden.png", "Shongun Raiden" ,"Polearm", "assets/img/electro.png","C2" ,"SS"),
        ElementMine("assets/img/eula.png", "Eula", "Claymore","assets/img/cryo.png", "C1","S"),
        ElementMine("assets/img/xiao.png", "Xiao", "Polearm","assets/img/anemo.png","C1","S"),
        ElementMine("assets/img/yoimiya.png", "Yoimiya", "Bow","assets/img/pyro.png","C0","S"),
        ElementMine("assets/img/tartaglia1.png", "Tartaglia", "Bow","assets/img/hydro.png","C0","S")
      ],
    );
  }
}