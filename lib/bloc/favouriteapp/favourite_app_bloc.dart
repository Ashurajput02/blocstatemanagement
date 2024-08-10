import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/favouriteapp/favourite_app_event.dart';
import 'package:bloc_app/bloc/favouriteapp/favourite_app_state.dart';
import 'package:bloc_app/models/favourite_item_model.dart';
import 'package:bloc_app/repo/favourite_list_repo.dart';

class favouriteBloc extends Bloc<favouriteAppEvent, FavouriteItemListStates> {
  List<favouriteItemModel> favlist = [];
  favouriteRepository FavouriteRepository;
  favouriteBloc(this.FavouriteRepository)
      : super(const FavouriteItemListStates()) {
//toh yeh favouriteRepository class ka ek object ban gya to use its functions
    on<fetchFavouriteList>(_fetchList);
    on<makeFavourite>(_makeFavourite);
    on<deleteitem>(_deleteitem);
  }
  void _fetchList(
      fetchFavouriteList event, Emitter<FavouriteItemListStates> emit) async {
    favlist = await FavouriteRepository.fetchItem();
    emit(state.copyWith(
        favouriteItemList: List.from(favlist),
        listStatus: ListStatus
            .success)); //ab data load hogya hain so ab status kya hoga success
  }

  void _makeFavourite(
      makeFavourite event, Emitter<FavouriteItemListStates> emit) async {
    final index = favlist.indexWhere((element) => element.id == event.item.id);
    favlist[index] = event.item;
    emit(state.copyWith(
        favouriteItemList: List.from(favlist), listStatus: ListStatus.success));
  }

  void _deleteitem(deleteitem event, Emitter<FavouriteItemListStates> emit) {
    favlist.removeWhere((element) => element.id == event.id);
    emit(state.copyWith(
        favouriteItemList: List.from(favlist), listStatus: ListStatus.success));
  }
}
