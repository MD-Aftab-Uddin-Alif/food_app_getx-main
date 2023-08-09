import 'package:food_app_getx/data/repository/cart_repo.dart';
import 'package:food_app_getx/models/cart_model.dart';
import 'package:food_app_getx/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  final Map<int, CartModel> _items = {};

  void addItem(ProductModel product, int quantity) {
    //_items.putIfAbsent(key, () => null)
  }
}
