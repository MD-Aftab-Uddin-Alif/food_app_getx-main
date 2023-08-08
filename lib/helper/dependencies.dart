import 'package:food_app_getx/controllers/popular_product_controller.dart';
import 'package:food_app_getx/data/api/api_client.dart';
import 'package:food_app_getx/data/repository/popular_product_repo.dart';
import 'package:food_app_getx/util/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  /* ------------------------------- api client ------------------------------- */
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  /* ---------------------------------- repos --------------------------------- */
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  /* ------------------------------- controllers ------------------------------ */
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}