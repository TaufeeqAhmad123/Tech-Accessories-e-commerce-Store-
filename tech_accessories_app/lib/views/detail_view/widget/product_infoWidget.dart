import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/core/utils/const.dart';
import 'package:tech_accessories_app/core/utils/image.dart';
import 'package:tech_accessories_app/core/utils/size_extension.dart';
import 'package:tech_accessories_app/provider/cart_provider.dart';
import 'package:tech_accessories_app/views/detail_view/widget/color_containerWidget.dart';

class ProductInfowidget extends StatelessWidget {
  final Product product;
  const ProductInfowidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Column(
      children: [
        FadeInDown(
          delay: Duration(milliseconds: 500),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.title,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.kanit(fontSize: 20.sp, color: Colors.white),
              ),
              Text(
                "\$ ${product.price.toString()}",
                style: GoogleFonts.kanit(fontSize: 20.sp, color: Colors.white),
              ),
            ],
          ),
        ),
        FadeInDown(
          delay: Duration(milliseconds: 500),
          child: Text(
            product.description,
            style: GoogleFonts.kanit(fontSize: 18.sp, color: Colors.white),
          ),
        ),
        3.vSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [FlipInX(
            delay: Duration(milliseconds: 500),
            child: ColorContainerWidget()), FadeIn(
               delay: Duration(milliseconds: 500),
              child: cartButton(provider))],
        ),
        3.vSpace,
        Divider(color: Colors.white.withOpacity(0.5), thickness: 2),
        Text(
          'Specification',
          style: GoogleFonts.kanit(fontSize: 20.sp, color: Colors.white),
        ),
      ],
    );
  }

  CupertinoButton cartButton(CartProvider provider) {
    return CupertinoButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1.3.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Text(
              'Add To cart',
              style: GoogleFonts.kanit(color: Colors.black, fontSize: 17.sp),
            ),
            3.hSpace,
            SvgPicture.asset(cartIcon, color: Colors.black, width: 3.h),
          ],
        ),
      ),
      onPressed: () => provider.addToCart(product),
    );
  }
}
