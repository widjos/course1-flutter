import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_fab_icon.dart';
import 'package:platzi_trips_app/Place/ui/widgets/text_input_location.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/widgets/text_input.dart';
import 'package:platzi_trips_app/widgets/tittle_header.dart';

//yokata desu ne
// ignore: must_be_immutable
class AddPlaceScreen extends StatefulWidget {
  File? image;

  AddPlaceScreen({Key? key, this.image}) : super(key: key);

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTittlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          GradientBack(tittle: '', heightNab: 300.0),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () => Navigator.pop(context),
                    )),
              ),
              Flexible(
                  child: Container(
                padding:
                    const EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
                child: TittleHeader(tittle: "Add a new Place"),
              ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(
                      pathImage: widget.image!.path,
                      width: 250.0,
                      height: 350.0,
                      left: 20.0,
                      onPressedFabIcon: () {},
                      iconData: Icons.camera),
                ), //Foto
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: TextInput(
                    hintText: "Tittle",
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerTittlePlace,
                  ),
                ),
                TextInput(
                    hintText: "Description",
                    inputType: TextInputType.multiline,
                    controller: _controllerDescriptionPlace,
                    maxLines: 4),
                Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TeextInputLocation(
                      hintText: "Add Location",
                      iconData: Icons.location_on,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
