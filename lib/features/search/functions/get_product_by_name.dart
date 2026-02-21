import 'package:green_mart_app/features/home/data/product_model.dart';

List<ProductModel> getProductByName(String searchKey) {
  List<ProductModel> filteredProducts = [];
  for (var product in allProducts) {
    if (product.name.toLowerCase().contains(searchKey)) {
      filteredProducts.add(product);
    }
  }
  return filteredProducts;
}
