import 'package:equatable/equatable.dart';

class favouriteItemModel extends Equatable {
  const favouriteItemModel(
      {required this.id,
      required this.value,
      this.isDeleting = false,
      this.isFavourite = false});

  final String id;
  final String value;
  final bool isDeleting;
  final bool isFavourite;

  //ab iss state ke further instances create karne ke liye we gonna be using copyWith

  favouriteItemModel copyWith(
      String? id, String? value, bool? isDeleting, bool isFavourite) {
    return favouriteItemModel(
        id: id ?? this.id,
        value: value ?? this.value,
        isDeleting: isDeleting ?? this.isDeleting,
        isFavourite: isFavourite ?? this.isFavourite);
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, value, isDeleting, isFavourite]; //taaki yeh sabhi
}
