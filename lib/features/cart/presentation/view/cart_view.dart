import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/will_pop_scope.dart';
import 'package:e_commerce/features/cart/presentation/controller/cart_controller.dart';
import 'package:e_commerce/features/cart/presentation/widget/build_cart_item.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      onWillPop: () => Future(() {
        return false;
      }),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(IconBroken.Arrow___Left_2),
            onPressed: () {
              Get.offAllNamed(Routes.mainView);
            },
          ),
          title: Text(
            'Shopping Cart',
            style: getBoldTextStyle(
              fontSize: ManagerFontSize.s22,
              color: ManagerColors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(IconBroken.Heart),
            ),
          ],
        ),
        body: GetBuilder<CartController>(builder: (controller) {
          return RefreshIndicator(
            onRefresh: () async {
              await controller.getCarts();
            },
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          ListView.separated(
                            itemBuilder: (context, index) => buildCartItem(context:context , index:index),
                            separatorBuilder: (context, index) => Divider(),
                            itemCount: controller.getCartsDataModel!.cartsItem!.length,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
