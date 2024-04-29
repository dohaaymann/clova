import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class ImageUploadScreen2 extends StatefulWidget {
  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen2> {
  late File _image;
 late String _apiResponse = '';
  static const String Routname='image';

  Future<void> _getImageAndUpload() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });

    if (_image != null) {
      _sendImageToAPI();
    }
  }

  Future<void> _sendImageToAPI() async {
    final apiUrl = 'https://b873-156-193-144-197.ngrok-free.app/api';
    final response = await http.post(Uri.parse(apiUrl), body: {
      'image': base64Encode(_image.readAsBytesSync()),
    });

    if (response.statusCode == 200) {
      setState(() {
        _apiResponse = response.body;
      });
    } else {
      print('Error: ${response.reasonPhrase}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('No image selected.')
                : Image.file(_image),
            ElevatedButton(
              onPressed: _getImageAndUpload,
              child: Text('Select Image'),
            ),
            SizedBox(height: 20),
            _apiResponse.isNotEmpty
                ? Text('API Response: $_apiResponse')
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

