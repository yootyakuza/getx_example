import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_x/controllers/profile_controllers.dart';

class Home extends StatelessWidget {
  //final testController = Get.put(ProfileController());

  final List<TextEditingController> _controller = [
    TextEditingController(),
    TextEditingController()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      print("update");
      return Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('username'),
            TextField(
              controller: _controller[0],
            ),
            Text('password'),
            TextField(
              controller: _controller[1],
            ),
            GestureDetector(
              child: Container(
                color: Colors.blue,
                width: 80,
                height: 50,
                child: Center(child: Text('Click')),
              ),
              onTap: () {
                controller.postLogin(_controller);

                // can use profileController.postLoginObx(_controller);
                controller.postLoginObx(_controller);
              },
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(controller.profile.email.toString()),
                    Text(controller.profile.id.toString()),
                    Text(controller.profile.userId.toString()),
                    Text(controller.profile.phone.toString()),
                    Text(controller.profile.message.toString()),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                children: <Widget>[
                  Text('Delay 5 sec'),
                  Text(controller.profile2.value.email.toString()),
                  Text(controller.profile2.value.id.toString()),
                  Text(controller.profile2.value.userId.toString()),
                  Text(controller.profile2.value.phone.toString()),
                  Text(controller.profile2.value.message.toString()),
                ],
              ),
            )),
            Expanded(child: Obx(() {
              return Container(
                child: Column(
                  children: <Widget>[
                    Text('Delay 5 sec for obs'),
                    Text(controller.profile2.value.email.toString()),
                    Text(controller.profile2.value.id.toString()),
                    Text(controller.profile2.value.userId.toString()),
                    Text(controller.profile2.value.phone.toString()),
                    Text(controller.profile2.value.message.toString()),
                  ],
                ),
              );
            })),
          ],
        ),
      ));
    });
  }
}
