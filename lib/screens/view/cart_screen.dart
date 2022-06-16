import 'package:delivery_app_ui/models/cart_category.dart';
import 'package:delivery_app_ui/models/cart_item.dart';
import 'package:delivery_app_ui/screens/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_category.dart';
import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCDCDD4),
      body: Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        padding: const EdgeInsets.only(
          top: 37,
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(19),
              topRight: Radius.circular(19),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 33),
                    child: SvgPicture.asset('assets/icons/close.svg'),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/cart.svg'),
                      const SizedBox(
                        width: 12.2,
                      ),
                      Text(
                        "Tu canasta",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: mainColor,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //cart items
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CartItem(
                    index: itemsInCart.elementAt(index).index,
                    itemTitle: itemsInCart.elementAt(index).itemTitle,
                    itemPrice: itemsInCart.elementAt(index).itemPrice,
                    itemQty: itemsInCart.elementAt(index).itemQty,
                    imagePath: itemsInCart.elementAt(index).imagePath,
                  );
                },
                itemCount: itemsInCart.length,
                scrollDirection: Axis.vertical,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 17,
                bottom: 28,
              ),
              child: Text(
                "Busca algo más",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: mainColor,
                  fontSize: 15,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 17,
                  bottom: 35,
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return CartCategory(
                      index: categoryList.elementAt(index).index,
                      imagePath: categoryList.elementAt(index).imagePath,
                      categoryTitle:
                          categoryList.elementAt(index).categoryTitle,
                    );
                  },
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 30,
                right: 44,
                top: 30,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: const Color(0xff707070).withOpacity(0.1),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total a cobrar:",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: mainColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "pago con tarjeta",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff92A3C5),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$85.00",
                    style: GoogleFonts.kumbhSans(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff354C7B),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 97,
              padding: const EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 22,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 30,
                    color: const Color(0xff8990D1).withOpacity(0.17),
                  )
                ],
              ),
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        left: 27,
                        top: 12,
                        bottom: 12,
                      ),
                      height: 29,
                      width: 29,
                      decoration: BoxDecoration(
                        color: const Color(0xffC3D61B),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "3",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffffffff),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Text(
                      "Ir a pagar",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        color: const Color(0xffffffff),
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 38,
                      ),
                      child: Text(
                        "\$52.00",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffffffff),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
