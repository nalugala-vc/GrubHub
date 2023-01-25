import 'package:get/get.dart';
import 'package:grubhub/controller/popular_products_controller.dart';
import 'package:grubhub/data/api/apiClient.dart';
import 'package:grubhub/data/repository/popular_products_repo.dart';

Future<void> init() async {
  //load Api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://127.0.0.1:8000"));

  //load repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductsController(popularProductRepo: Get.find()));
}
