import 'package:bloc_app/models/favourite_item_model.dart';

class favouriteRepository {
  Future<List<favouriteItemModel>> fetchItem() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.of(_generateList(10));
  }

  List<favouriteItemModel> _generateList(int length) {
    return List.generate(
        length,
        (index) =>
            favouriteItemModel(id: index.toString(), value: 'item $index'));
  }
}
