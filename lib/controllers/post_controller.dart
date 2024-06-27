import 'package:get/get.dart';
import 'package:getx_project/model/post_models.dart';
import 'package:getx_project/servicces/api_services.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  var postList = <postModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getAllPost();
    super.onInit();
  }

  void getAllPost() async {
    var data = await ApiServices().fetchPost();
    if (data.length > 0) {
      postList.clear();
      isLoading(false);
      postList.addAll(data);
    }
  }
}
