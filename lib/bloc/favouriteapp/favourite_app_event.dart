import 'package:bloc_app/models/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

abstract class favouriteAppEvent extends Equatable {
  const favouriteAppEvent();
  @override
  List<Object> get props => [];
}

class fetchFavouriteList extends favouriteAppEvent {}

class makeFavourite extends favouriteAppEvent {
  favouriteItemModel item;
  makeFavourite({required this.item});
}

class deleteitem extends favouriteAppEvent {
  String id;
  deleteitem({required this.id});
}
