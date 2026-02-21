import 'package:green_mart_app/features/home/data/cart_model.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

void addToCart(ProductModel model) {
  for (var item in cartItems) {
    if (item.product.id == model.id) {
      item.quantity++;
      return;
    }
  }
  cartItems.add(CartModel(product: model));
}
