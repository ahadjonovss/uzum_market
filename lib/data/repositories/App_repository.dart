import 'package:uzum_market/data/api_services/product_service.dart';
import 'package:uzum_market/data/models/product_model.dart';

class AppRepository {
  static List meningSavatim=[];
  static Future<List?> getProductsByCategoryFromApi(String category) async =>
      await getProductsByCategory(category);

  static insertToCart(Product product){
    meningSavatim.add(product);
  }

  static deleteProduct(Product product){
    meningSavatim.remove(product);
  }
}
