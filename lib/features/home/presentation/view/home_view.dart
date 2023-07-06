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
import 'package:e_commerce/features/home/presentation/widget/custom_drawer.dart';
import 'package:e_commerce/features/home/presentation/widget/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
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
                      prefixIcon: IconBroken.Search,
                    ),
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
                          itemCount: 14,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Expanded(
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      ManagerAssets.colthesIcon,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: ManagerHeight.h10,
                                ),
                                Expanded(
                                    child: Text(
                                  'Clothes',
                                  style: getTextStyle(
                                    fontSize: ManagerFontSize.s16,
                                    color: ManagerColors.black,
                                    weight: ManagerFontWeight.w600,
                                  ),
                                )),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: ManagerHeight.h10,
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
                      childAspectRatio: 1 / 1.57,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(
                        16,
                        (index) => buildGridProducts(context),
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
