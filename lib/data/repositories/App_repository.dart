import 'package:uzum_market/data/api_services/product_service.dart';

class AppRepository {
  static Future<List?> getProductsByCategoryFromApi(String category) async =>
      await getProductsByCategory(category);
}
