import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:wassel_app/UI/widgets/uploader.dart';

class UploadOrderScreen extends StatefulWidget {
  @override
  _UploadOrderScreenState createState() => _UploadOrderScreenState();
}

class _UploadOrderScreenState extends State<UploadOrderScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final StorageReference storageReference = FirebaseStorage.instance.ref();
  final picker = ImagePicker();
  File imageFile;

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("From where do you want to take the photo?"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Gallery"),
                  onTap: () {
                    pickImage(ImageSource.gallery, context);
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Camera"),
                  onTap: () {
                    pickImage(ImageSource.camera, context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> pickImage(ImageSource source, BuildContext context) async {
    PickedFile selected = await picker.getImage(source: source);
    try {
      this.setState(
        () {
          imageFile = File(selected.path);
        },
      );
    } catch (err) {
      _key.currentState.showSnackBar(
        SnackBar(
          content: Text(
            err.toString(),
          ),
        ),
      );
    }
    Navigator.pop(context);
  }

  Future<void> cropImage() async {
    File cropped = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
    );
    setState(() {
      imageFile = cropped ?? imageFile;
    });
  }

  void resetImage() {
    setState(
      () => imageFile = null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    // final double width = size.width;
    return Scaffold(
      appBar: AppBar(),
      key: _key,
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3.5,
              ),
            ),
            margin: const EdgeInsets.all(5.0),
            height: height * 0.65,
            child: imageFile == null
                ? Center(
                    child: Text("Take or select photo"),
                  )
                : Image.file(imageFile),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  cropImage();
                },
                child: Icon(Icons.crop),
              ),
              RaisedButton(
                onPressed: () {
                  resetImage();
                },
                child: Icon(Icons.refresh),
              ),
            ],
          ),
          Uploader(file: imageFile),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSelectionDialog(context);
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
