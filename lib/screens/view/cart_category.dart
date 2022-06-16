// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:delivery_app_ui/screens/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCategory extends StatelessWidget {
  final index;
  final imagePath;
  final categoryTitle;
  const CartCategory({
    Key? key,
    required this.index,
    required this.imagePath,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
      ),
      child: Column(
        children: [
          Image.asset('$imagePath'),
          const SizedBox(
            height: 5,
          ),
          Text(
            "$categoryTitle",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.normal,
              color: mainColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
