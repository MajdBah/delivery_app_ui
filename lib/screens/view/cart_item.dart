// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:delivery_app_ui/screens/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delivery_app_ui/models/cart_item.dart';

class CartItem extends StatelessWidget {
  final index;
  final imagePath;
  final itemTitle;
  final itemPrice;
  final itemQty;

  const CartItem({
    Key? key,
    required this.index,
    required this.imagePath,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemQty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xff707070).withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 13,
          right: 29,
          bottom: index == itemsInCart.length - 1 ? 22.4 : 0,
        ),
        padding: const EdgeInsets.only(bottom: 15.5),
        child: Row(
          children: [
            Image.asset('$imagePath'),
            const SizedBox(
              width: 21,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$itemTitle",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: mainColor,
                    ),
                  ),
                  Text(
                    "\$$itemPrice",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 75.8,
              margin: const EdgeInsets.only(top: 24.4),
              padding: const EdgeInsets.only(
                top: 13,
                bottom: 13,
                right: 17.5,
                left: 17.5,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE2EDF2),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/plus.svg'),
                  const SizedBox(
                    height: 4.5,
                  ),
                  Text(
                    "$itemQty",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SvgPicture.asset('assets/icons/minus.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
