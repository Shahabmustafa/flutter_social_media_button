[![pub package](https://img.shields.io/pub/v/flutter_social_media_button)](https://pub.dev/packages/flutter_social_media_button)
# Flutter Social Media Button

Flutter Social Media Button is a flutter package to create social media login buttons of all common used SSO.

## Usage

Add the dependency in pubsec.yaml file.

dependencies: 
   flutter:
      sdk: flutter
  flutter_social_media_button: 1.0.5+3

## How to Use

```dart
  Widget buildSocialMediaButton(){
  return FlutterSocialMediaButton(
    title: "Facebook",
    imageUrl: "assets/images/facebook.png",
    height: 50,
    imageWidth: 35,
    imageHeight: 35,
    onlyImageAvalible: false,
    onPress: (){
    },
  );
}    
```


Below is the example with all arguments supplied:

```dart
  Widget buildSocialMediaButton(){
  return FlutterSocialMediaButton(
    title: "Facebook",
    imageUrl: "assets/images/facebook.png",
    height: 50,
    width: 50,
    imageWidth: 35,
    imageHeight: 35,
    onlyImageAvalible: true,
    onPress: (){
    },
  );
}    
```


## Example

```
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tiktok_clone/view/widget/flutter_button.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({Key? key}) : super(key: key);

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterSocialMediaButton(
              title: "Facebook",
              imageUrl: "assets/images/facebook.png",
              height: 50,
              imageWidth: 35,
              imageHeight: 35,
              onlyImageAvalible: false,
              onPress: (){
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlutterSocialMediaButton(
              title: "Apple",
              imageUrl: "assets/images/apple-logo.png",
              height: 50,
              width: 50,
              imageWidth: 35,
              imageHeight: 35,
              onlyImageAvalible: true,
              onPress: (){
              },
            ),
          ],
        ),
      )
    );
  }
}
}

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[Apache-2.0](https://choosealicense.com/licenses/apache-2.0/)

## Screenshot
![Image](https://github.com/Shahabmustafa/flutter_social_media_button/blob/master/screenshots/images1.png)
![Image](https://github.com/Shahabmustafa/flutter_social_media_button/blob/master/screenshots/images2.png)