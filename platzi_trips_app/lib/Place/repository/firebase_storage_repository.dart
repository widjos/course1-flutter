

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:platzi_trips_app/Place/repository/firebase_storage_api.dart';

class FirebaseStorageRepository {
 final _firestorageReference = FirebaseStorageAPI();

  Future<UploadTask> uploadFile(String path, File image){
    return _firestorageReference.uploadFile(path, image);
  }
}