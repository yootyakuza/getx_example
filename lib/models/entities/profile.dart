class Profile {
  int? id;
  int? userId;
  String? success;
  String? message;
  String? storename;
  int? storeDeviceId;
  String? name;
  String? email;
  String? phone;
  String? restaurantLogo;
  String? receiveOrder;

  Profile(
      {this.id,
      this.userId,
      this.success,
      this.message,
      this.storename,
      this.storeDeviceId,
      this.name,
      this.email,
      this.phone,
      this.restaurantLogo,
      this.receiveOrder});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    success = json['success'];
    message = json['message'];
    storename = json['storename'];
    storeDeviceId = json['storeDeviceId'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    restaurantLogo = json['restaurant_logo'];
    receiveOrder = json['receive_order'];
  }
}
