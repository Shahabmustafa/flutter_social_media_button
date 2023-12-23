import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FlutterSocialMediaButton extends StatelessWidget {
  FlutterSocialMediaButton({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.onPress,
    this.height,
    this.width,
    this.border,
    this.borderRadius,
    this.textColor,
    this.textBold,
    this.textSize,
    this.color,
    this.loading = false,
    this.imageHeight,
    this.imageWidth,
    this.loadingColor,
    this.onlyImageAvailable = false,
  }) : super(key: key);
  String imageUrl;
  String title;
  VoidCallback onPress;
  BoxBorder? border;
  BorderRadiusGeometry? borderRadius;
  Color? textColor;
  FontWeight? textBold;
  double? textSize;
  double? height;
  double? width;
  Color? color;
  bool loading;
  double? imageHeight;
  double? imageWidth;
  Color? loadingColor;
  bool onlyImageAvailable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading ? null : onPress,
      child: Container(
        height: height ?? 60,
        width: width ?? 400,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 0.5,
              spreadRadius: 2,
              offset: Offset(0.5,1),
            ),
          ],
          color: Colors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(40),
          border: border,
        ),
        child: loading ?
        Center(
          child: CircularProgressIndicator(color: loadingColor ?? Colors.black,),
        ) :
        onlyImageAvailable ?
        Center(
          child: Image.asset(
            imageUrl,
            height: imageHeight ?? 30,
            width: imageWidth ?? 30,
          ),
        ) :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: imageHeight ?? 35,
              width: imageWidth ?? 35,
            ),
            SizedBox(
              width: 20,
            ),
            Center(
              child: Text(
                title.toString(),
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontWeight: textBold ?? FontWeight.bold,
                  fontSize: textSize ?? 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


