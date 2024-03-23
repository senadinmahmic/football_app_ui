import 'package:flutter/material.dart';
import 'package:football_app_ui/config/app_colors.dart';
import 'package:football_app_ui/data/dummy_data.dart';

class CustomContainer extends StatelessWidget {
  final int index;
  const CustomContainer({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 151,
              width: 126,
              color: AppColors.primary1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 3,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: SizedBox(
                height: 145,
                width: 120,
                child: ClipPath(
                  clipper: MyCustomClipper(),
                  child: Image.asset(
                    playersList[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, size.height * 0.1);

    path.lineTo(0, size.height * 0.75);

    path.lineTo(size.width / 2, size.height);

    path.lineTo(size.width, size.height * 0.75);

    path.lineTo(size.width, size.height * 0.1);

    path.lineTo(size.width / 2, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
