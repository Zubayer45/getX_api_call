import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/controllers/post_controller.dart';

class MyhomePage extends StatelessWidget {
  final postcon = Get.put(PostController());
  // const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calling'),
      ),
      body: Obx(
        () => postcon.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: postcon.postList.length,
                itemBuilder: (_, index) {
                  return Card(
                    elevation: 20,
                    child: Container(
                      height: 150,
                      child: Column(
                        children: [
                          Text(
                            postcon.postList[index].id.toString(),
                          ),
                          Text(
                            postcon.postList[index].userId.toString(),
                          ),
                          Text(
                            postcon.postList[index].title.toString(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
