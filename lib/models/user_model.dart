// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String id;
  final String name;
  final String type;
  final String username;
  final String password;
  final String phone;
  final String address;
  final String avatar;
  final String lat;
  final String lng;
  UserModel({
    required this.id,
    required this.name,
    required this.type,
    required this.username,
    required this.password,
    required this.phone,
    required this.address,
    required this.avatar,
    required this.lat,
    required this.lng,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? type,
    String? username,
    String? password,
    String? phone,
    String? address,
    String? avatar,
    String? lat,
    String? lng,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      username: username ?? this.username,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      avatar: avatar ?? this.avatar,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'username': username,
      'password': password,
      'phone': phone,
      'address': address,
      'avatar': avatar,
      'lat': lat,
      'lng': lng,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
      phone: map['phone'] as String,
      address: map['address'] as String,
      avatar: map['avatar'] as String,
      lat: map['lat'] as String,
      lng: map['lng'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, type: $type, username: $username, password: $password, phone: $phone, address: $address, avatar: $avatar, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.type == type &&
      other.username == username &&
      other.password == password &&
      other.phone == phone &&
      other.address == address &&
      other.avatar == avatar &&
      other.lat == lat &&
      other.lng == lng;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      type.hashCode ^
      username.hashCode ^
      password.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      avatar.hashCode ^
      lat.hashCode ^
      lng.hashCode;
  }
}
