import 'package:e_commerce/core/widgets/base_text_form_field.dart';
import 'package:e_commerce/core/widgets/swip_wide_text.dart';
import 'package:e_commerce/core/widgets/will_pop_scope.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Drawer(),
        title: SwipWide(),
        actions: [
          FlutterLogo(),
        ],
      ),
      body: willPopScope(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
