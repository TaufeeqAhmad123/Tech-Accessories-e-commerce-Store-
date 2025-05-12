import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/components/appGradientWidget.dart';
import 'package:tech_accessories_app/core/utils/appStyle.dart';
import 'package:tech_accessories_app/core/utils/image.dart';
import 'package:tech_accessories_app/core/utils/size_extension.dart';
import 'package:tech_accessories_app/provider/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(cartIcon, height: 22.sp),
            3.hSpace,
            Text('Cart', style: GoogleFonts.kanit(fontSize: 22.sp)),
          ],
        ),
      ),
      body: Column(
        children: [
          Consumer<CartProvider>(
            builder: (context, provider, child) => provider.cartList.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 42.h,
                          child: ListView.builder(
                            itemCount: provider.cartList.length,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              final product = provider.cartList[index];
                              return Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Row(
                                  children: [
                                    Appgradientwidget(
                                      padding: const EdgeInsets.only(left: 16),
                                      height: 12.h,
                                      width: 24.w,
                                      child: FlipInY
                                      
                                      (
                                        delay: Duration(milliseconds: 500),
                                        child: Image.asset(product.imagePath)),
                                    ),
                                    2.hSpace,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          product.title,
                                          style: GoogleFonts.kanit(
                                            fontSize: 17.sp,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          '\$${(product.price * provider.getquantity(product.id)).toStringAsFixed(2)}',
                                          style: GoogleFonts.kanit(
                                            fontSize: 18.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              provider.decreamentuantity(
                                                product.id,
                                              );
                                              provider.removeFromCart(product);
                                            },
                                            icon: Icon(Icons.remove),
                                          ),
                                          Text(
                                            provider
                                                .getquantity(product.id)
                                                .toString(),
                                            style: GoogleFonts.kanit(
                                              fontSize: 18.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () => provider
                                                .increamentuantity(product.id),
                                            icon: Icon(Icons.add),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(color: Colors.grey),
                        2.vSpace,
                        checkOutWidget(),
                      ],
                    ),
                  )
                : Image.asset(
                    empetyCart,
                    color: Colors.black,
                    height: 700,
                    width: 500,
                  ),
          ),
        ],
      ),
    );
  }
}

class checkOutWidget extends StatelessWidget {
  const checkOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Appgradientwidget(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 1.h,
      ),
      height: 29.h,
      borderRadius: 16,
      child: Consumer<CartProvider>(
        builder: (condex, provider, child) => Column(
          children: [
            FadeInDown(
              delay: Duration(milliseconds: 200),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Selected Items : ",
                    style: GoogleFonts.kanit(
                      fontSize: 19.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "\$${provider.totalPrice().toStringAsFixed(2)}",
                    style: GoogleFonts.kanit(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            FadeInDown(
               delay: Duration(milliseconds: 200),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Fee",
                    style: GoogleFonts.kanit(
                      fontSize: 19.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "\$${provider.shippingPrice.toStringAsFixed(2)}",
                    style: GoogleFonts.kanit(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            1.vSpace,
            const Divider(color: Colors.grey),
            1.vSpace,
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: GoogleFonts.kanit(
                    fontSize: 19.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\$${provider.totalPrice() + provider.shippingPrice}0",
                  style: GoogleFonts.kanit(
                    fontSize: 20.sp,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            FadeInUp(
              delay: Duration(milliseconds: 200),
              child: CupertinoButton(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 0.05.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber,
                  ),
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: headingStyle(context).copyWith(
                        fontSize: 19.sp,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
