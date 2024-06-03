import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:walid_project/resultpco.dart';
import 'package:http_parser/http_parser.dart';

class ImageUploadScreen2 extends StatefulWidget {
  static const String Routname = 'image';

  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen2> {
  File? selectedImage;
  late String _responseText;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _responseText = '';
  }

  Future<void> _pickImageFromGallery() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          selectedImage = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }}
  Future<void> _uploadImage() async {
    if (selectedImage == null) {
      print('No image selected');
      return;
    }
    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('https://ffbb-2c0f-fc89-8017-d37-6977-c0e3-7076-d972.ngrok-free.app/api'),
      );

      request.files.add(await http.MultipartFile.fromPath(
        'image',
        selectedImage!.path,
        contentType: MediaType('image', 'jpg'), // adjust the content type accordingly
      ));

      var response = await request.send();
      if (response.statusCode == 200) {
        var responseData = await response.stream.bytesToString();
        setState(() {
          _responseText = responseData;
        });
      } else {
        setState(() {
          _responseText = 'Failed to get response from API. Status code: ${response}';
        });
      }
    } catch (e) {
      print('Error uploading image: $e');
      setState(() {
        _responseText = 'Error uploading image: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFD8DF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (Context) => resultpco()));
          },
        ),
        backgroundColor: Color(0XFFFFD8DF),
        title: Text('Ultrasound result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _pickImageFromGallery,
              child: Text('Select An Image'),
            ),
            SizedBox(height: 20),
            selectedImage != null
                ? Image.file(selectedImage!)
                : const Text('Please select an Image'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Submit Selected Image'),
            ),
            SizedBox(height: 20),
            _responseText.isNotEmpty
                ? Text(
              '\n$_responseText',
              style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
              ),
              textAlign: TextAlign.center,
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}