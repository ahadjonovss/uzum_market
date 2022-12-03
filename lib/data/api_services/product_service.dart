import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

Future<List?>getProductsByCategory(String category) async {
  Uri uri= Uri.parse('https://fakestoreapi.com/products/category/$category');
  var response= await http.get(uri);
  if(response.statusCode==200){
    var jsonResponse =
    convert.jsonDecode(response.body);
    return jsonResponse.map((e) => Product.fromJson(e)).toList();
  }
  return null;
}