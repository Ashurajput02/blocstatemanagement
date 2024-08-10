// import 'package:bloc_app/models/favourite_item_model.dart';
// import 'package:equatable/equatable.dart';

// enum listStatus{loading,success,failure}
// class favouriteItemListStates extends Equatable {
//   final List<favouriteItemModel> favouriteItemList;
//   final listStatus listStatus;
//   const favouriteItemListStates({
//     this.favouriteItemList=[],
//     this.listStatus=listStatus.loading,
//   })

//   @override
//   // TODO: implement props
//   List<Object?> get props => throw UnimplementedError();

// }

import 'package:bloc_app/models/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

enum ListStatus { loading, success, failure }

class FavouriteItemListStates extends Equatable {
  final List<favouriteItemModel> favouriteItemList;
  final ListStatus listStatus;

  const FavouriteItemListStates({
    this.favouriteItemList = const [],
    this.listStatus = ListStatus.loading,
  });

  @override
  List<Object?> get props => [favouriteItemList, listStatus];

  FavouriteItemListStates copyWith({
    List<favouriteItemModel>? favouriteItemList,
    ListStatus? listStatus,
  }) {
    return FavouriteItemListStates(
      favouriteItemList: favouriteItemList ?? this.favouriteItemList,
      listStatus: listStatus ?? this.listStatus,
    );
  }
}
