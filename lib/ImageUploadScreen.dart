import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class ImageUploadScreen extends StatefulWidget {
  static const String Routname = 'image';

  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  File? selectedImage;
  late String _responseText;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _responseText = '';
  }

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });

      final response = await http.post(
        Uri.parse('https://b873-156-193-144-197.ngrok-free.app/api'),
        body: {'image': base64Encode(await selectedImage!.readAsBytes())},
      );

      if (response.statusCode == 200) {
        setState(() {
          _responseText = response.body;
        });
      } else {
        setState(() {
          _responseText = 'Failed to get response from API';
        });
      }
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
            ElevatedButton(
              onPressed: _pickImageFromGallery,
              child: Text('Select Image'),
            ),
            SizedBox(height: 20),
            selectedImage != null
                ? Image.file(selectedImage!)
                : const Text('Please select an image'),
            SizedBox(height: 20),
            _responseText.isNotEmpty
                ? Text(
              'Response from API:\n$_responseText',
              textAlign: TextAlign.center,
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}