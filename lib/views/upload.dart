import 'dart:convert';
import 'dart:io';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  File? image;

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      // final imageTemp = File(image.path);
      final imageTemp = await saveImage(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Đéo lấy được ảnh, bực vãi lol: $e');
    }
  }

  Future<File> saveImage(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  Future<String?> uploadImage(File imageFile) async {
    var fileName = imageFile.path.split('/').last;
    var uri = Uri.parse(
        'https://apiappmobile.vntt.com.vn/WeatherForecast/UploadFile');
    var request = http.MultipartRequest("POST", uri);
    var multipartFile =
        await http.MultipartFile.fromPath("file", imageFile.path);
    request.files.add(multipartFile);
    var response = await request.send();
    print('name: ' + fileName);
    print('Status: ${response.statusCode}');
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    });
    return response.reasonPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              image != null
                  ? Image.file(
                      image!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50)),
                      width: 200,
                      height: 200,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[800],
                      ),
                    ),
              const SizedBox(height: 20),
              const Text(
                'Chọn ảnh',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              buildButton(
                title: 'Chọn ảnh',
                onPress: () => getImage(ImageSource.gallery),
              ),
              const SizedBox(height: 20),
              buildButton(
                title: 'Chụp ảnh',
                onPress: () => getImage(ImageSource.camera),
              ),
              const Spacer(),
              buildButton(
                title: 'Gữi',
                onPress: () => uploadImage(image!),
              ),
            ],
          )),
    );
  }

  Widget buildButton({
    required String title,
    required VoidCallback onPress,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          // primary: Colors.white,
          // onPrimary: Colors.black,
          backgroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onHover: (value) => {},
        child: Row(
          children: [
            const SizedBox(width: 15),
            Text(title),
          ],
        ),
        onPressed: onPress,
      );
}
