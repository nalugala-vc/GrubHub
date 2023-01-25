import 'package:get/get.dart';
import 'package:grubhub/data/repository/popular_products_repo.dart';
import 'package:grubhub/models/productsModel.dart';

class PopularProductsController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductsController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {
      print("no data");
    }
  }
}
