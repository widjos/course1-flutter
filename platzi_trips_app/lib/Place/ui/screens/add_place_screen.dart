import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_fab_icon.dart';
import 'package:platzi_trips_app/Place/ui/widgets/text_input_location.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/widgets/button_green.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/widgets/text_input.dart';
import 'package:platzi_trips_app/widgets/tittle_header.dart';

//yokata desu ne
// ignore: must_be_immutable
class AddPlaceScreen extends StatefulWidget {
  
  File image;
 

  AddPlaceScreen({
    Key? key, required this.image
  }) : super(key: key);

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
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
                  margin: const EdgeInsets.only(bottom: 20.0),
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(
                      pathImage: widget.image.path,
                      width: 350.0,
                      height: 220.0,
                      left: 0,
                      onPressedFabIcon: () {},
                      iconData: Icons.camera_alt),
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
                    )),
                Container(
                    width: 70.0,
                    child: ButtonGreen('Add Place', (){
                      {
                        //Firebase Storage
                        //url
                        //Cloud Firestore
                        //Place - title , description, url ,userOwner , likes
                        userBloc.updatePlaceData(Place(
                          name: _controllerTittlePlace.text,
                          description: _controllerDescriptionPlace.text,
                          likes: 0,
                        )).whenComplete(() {
                          print("Nuevo lugar  agregado");
                          Navigator.pop(context);
                        });          
                      }
                    }, 300.0, 50.0))
              ],
            ),
          )
        ],
      ),
    );
  }


}
