import 'dart:convert';

import 'package:test_get_x/models/entities/profile.dart';
import 'package:test_get_x/services/services.dart';
import 'package:flutter/material.dart';

class ProfileModel {
  Services _services = new Services();

  ProfileModel();

  Future<Profile> login(List<TextEditingController>? controller) async {
    print("username : " + controller![0].value.text);
    print("password : " + controller[1].value.text);
    dynamic body = jsonEncode(<String, String>{
      'action': 'StoreLogin',
      'username': 'SDBStore@softdebut.com',
      'password': 'P@ssw0rd',
      'device_id':
          'eysltQOfTX-p_Y8tQNCEVL:APA91bHMIzTYtp5c03zWVxdBvvJsd79-W0q2gTstkowZ2iVFO240wdxtIGwXRJGbs6uJu9S4IAiDHNB6--DEWkGj6qtk1nDWJEqiPVTi3x2gSF4ewmcBFwC4Q-ZKuVnCvkJRX6iArUp1',
      'device_name': 'android',
      'role_id': '2'
    });
    print("body request : " + body);
    Profile profile = Profile.fromJson(await _services.post(
        'https://eatshub.co/v3/StoreMobileApi/requests', body));

    print('profile : ' + profile.name.toString());
    return profile;
  }
}
// {
//     "action": "StoreLogin",
//     "username": "SDBStore@softdebut.com",
//     "password": "P@ssw0rd",
//     "device_id": "eysltQOfTX-p_Y8tQNCEVL:APA91bHMIzTYtp5c03zWVxdBvvJsd79-W0q2gTstkowZ2iVFO240wdxtIGwXRJGbs6uJu9S4IAiDHNB6--DEWkGj6qtk1nDWJEqiPVTi3x2gSF4ewmcBFwC4Q-ZKuVnCvkJRX6iArUp1",
//     "device_name": "android",
//     "role_id": "2"
// }