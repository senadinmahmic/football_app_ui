import 'package:flutter/material.dart';

class PlayerInfoAppBar extends StatelessWidget {
  const PlayerInfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text(
        'PROFILE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
