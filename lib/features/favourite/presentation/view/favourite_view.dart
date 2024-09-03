import 'package:e_commerce/config/dependency_injection.dart';
import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/will_pop_scope.dart';
import 'package:e_commerce/features/favourite/presentation/controller/favorite_controller.dart';
import 'package:e_commerce/features/favourite/presentation/widget/build_grid_favourite.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      onWillPop: () => Future(() {
        return false;
      }),
      child: GetBuilder<FavoriteController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(IconBroken.Arrow___Left_2),
                onPressed: () {
                  Get.toNamed(Routes.mainView);
                },
              ),
              title: Text(
                'Wishlist',
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s22,
                  color: ManagerColors.black,
                ),
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                await controller.getFavorites();
              },
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: ManagerHeight.h30,
                          crossAxisSpacing: ManagerWidth.w30,
                          childAspectRatio: 1 / 1.62,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(
                            controller.getFavoritesDataModel!.dataDetails!.length,
                                (index) =>
                                buildGridFavourite(context: context, index: index),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
