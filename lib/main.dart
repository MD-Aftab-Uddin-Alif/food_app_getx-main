import 'package:flutter/material.dart';
import 'package:food_app_getx/controllers/popular_product_controller.dart';
import 'package:food_app_getx/controllers/recommended_product_controller.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
import 'routes/route_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Get.find<CartController>().getCartData();
    //Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().recommendedProductList;
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //home: const SplashScreen(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}
