import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_x/models/entities/profile.dart';
import 'package:test_get_x/models/logic/profile_model.dart';

class ProfileController extends GetxController {
  final ProfileModel _profileModel = ProfileModel();

  var profile = Profile();
  var profile2 = Profile().obs;

  Future<void> postLogin(List<TextEditingController>? controller) async {
    profile = await _profileModel.login(controller);
    update();
  }

  Future<void> postLoginObx(List<TextEditingController>? controller) async {
    await Future.delayed(Duration(seconds: 5));
    profile2.value = await _profileModel.login(controller);
  }
}
