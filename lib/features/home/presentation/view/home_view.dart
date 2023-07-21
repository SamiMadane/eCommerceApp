import 'package:e_commerce/core/resources/icon_broken.dart';
import 'package:e_commerce/core/resources/manager_assets.dart';
import 'package:e_commerce/core/resources/manager_colors.dart';
import 'package:e_commerce/core/resources/manager_fonts.dart';
import 'package:e_commerce/core/resources/manager_sizes.dart';
import 'package:e_commerce/core/resources/manager_styles.dart';
import 'package:e_commerce/core/widgets/base_text_form_field.dart';
import 'package:e_commerce/core/widgets/swip_wide_text.dart';
import 'package:e_commerce/core/widgets/will_pop_scope.dart';
import 'package:e_commerce/features/home/presentation/controller/home_controller.dart';
import 'package:e_commerce/features/home/presentation/widget/build_grid_product.dart';
import 'package:e_commerce/features/home/presentation/widget/build_grid_product_shimmer.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_drawer.dart';
import 'package:e_commerce/features/home/presentation/widget/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(),
          drawer: CustomDrawer(),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ManagerHeight.h20,
                  ),
                  baseTextFormField(
                      hintText: 'Search “Smartphone”',
                      controller: controller.search,
                      prefixIcon: Icon(IconBroken.Search),
                      onSubmit: (text) {
                        controller.submit();
                        controller.searchProduct(text.toString());
                      }),

                  SizedBox(
                    height: ManagerHeight.h50,
                  ),
                  Text(
                    'Shop By Category',
                    style: getTextStyle(
                      fontSize: ManagerFontSize.s20,
                      color: ManagerColors.black,
                      weight: ManagerFontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h22,
                  ),
                  Container(
                    width: double.infinity,
                    height: ManagerHeight.h170,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categoryDataModel
                            ?.categoryDataDetailsModel?.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.network(
                                      controller
                                              .categoryDataModel!
                                              .categoryDataDetailsModel![index]
                                              .image ??
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/2048px-No_image_available.svg.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: ManagerHeight.h10,
                              ),
                              Expanded(
                                  child: Container(
                                width: ManagerWidth.w100,
                                child: Text(
                                  controller
                                          .categoryDataModel!
                                          .categoryDataDetailsModel![index]
                                          .name ??
                                      'Nothing',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: getTextStyle(
                                    fontSize: ManagerFontSize.s16,
                                    color: ManagerColors.black,
                                    weight: ManagerFontWeight.w600,
                                  ),
                                ),
                              )),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: ManagerHeight.h4,
                  ),
                  Text(
                    'Newest Arrival',
                    style: getTextStyle(
                      fontSize: ManagerFontSize.s20,
                      color: ManagerColors.black,
                      weight: ManagerFontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h22,
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: ManagerHeight.h30,
                    crossAxisSpacing: ManagerWidth.w30,
                    childAspectRatio: 1 / 1.65,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      controller.isSearch()
                          ? controller.searchDataModel!.dataDetails!.length
                          : controller.homeDataModel!.products!.length,
                      (index) =>
                          buildGridProducts(
                              context: context,
                              index: index,
                              isSearch: controller.isSearch()) ??
                          buildGridProductsShimmer(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
