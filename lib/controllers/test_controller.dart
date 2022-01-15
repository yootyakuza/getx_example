import 'dart:core';

import 'package:get/get.dart';
import 'package:test_get_x/models/logic/test_model.dart';

class TestController extends GetxController {
  final TestModel _testModel = TestModel();

  var test = ''.obs;

  Future<void> getTest() async {
    await Future.delayed(Duration(seconds: 5));
    test.value = _testModel.test;
  }
}
