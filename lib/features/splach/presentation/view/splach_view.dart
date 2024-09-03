import 'package:e_commerce/core/widgets/scaffold_with_image_and_text_and_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_strings.dart';

class SplachView extends StatelessWidget {
  const SplachView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldWithImageAndTextAndLoader(
        logo: ManagerAssets.logo,
        firstText: ManagerStrings.swip,
        secondText: ManagerStrings.wide,
      ),
    );
  }
}
