import 'package:flutter/material.dart';

import 'package:reserva_user/utils/AppConfig.dart';

class AppBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double height;
  final Color? color;
  final double width;
  final TextStyle? style;

  const AppBtn({
    super.key,
    this.onPressed,
    required this.title,
    this.width = 0.7,
    this.height = 50,
    required this.style,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height,
          width: AppConfig.width * width,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(
                  Size(AppConfig.width * width, height)),
              minimumSize: MaterialStateProperty.all(
                  Size(AppConfig.width * width, height)),
              backgroundColor:
                  MaterialStateProperty.all(color ?? Color(0xffbd8d46)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: style ??
                    const TextStyle(
                      fontFamily: "Jost",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        )
      ],
    );
  }
}
