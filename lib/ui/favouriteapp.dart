// import 'package:bloc_app/bloc/favouriteapp/favourite_app_bloc.dart';
// import 'package:bloc_app/bloc/favouriteapp/favourite_app_event.dart';
// import 'package:bloc_app/bloc/favouriteapp/favourite_app_state.dart';
// import 'package:bloc_app/models/favourite_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:icons_plus/icons_plus.dart';

// class favouriteAppScreen extends StatefulWidget {
//   @override
//   State<favouriteAppScreen> createState() => _favouriteAppScreenState();
// }

// class _favouriteAppScreenState extends State<favouriteAppScreen> {
//   @override
//   void initState() {
//     super.initState();

//     context.read<favouriteBloc>().add(fetchFavouriteList());
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(title: Text("Favourite app")),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: BlocBuilder<favouriteBloc, FavouriteItemListStates>(
//               builder: (context, state) {
//             switch (state.listStatus) {
//               case ListStatus.loading:
//                 return Center(child: CircularProgressIndicator());
//                 break;
//               case ListStatus.failure:
//                 return Center(child: Text("Something wnet wrong"));
//               case ListStatus.success:
//                 return ListView.builder(
//                     itemCount: state.favouriteItemList.length,
//                     itemBuilder: (context, index) {
//                       final item = state.favouriteItemList[index];
//                       return Card(
//                           child: ListTile(
//                               title: Text(item.value.toString()),
//                               trailing: IconButton(
//                                   onPressed: () {
//                                     favouriteItemModel FavouriteItemModel =
//                                         favouriteItemModel(
//                                             id: item.id,
//                                             value: item.value,
//                                             isFavourite: item.isFavourite
//                                                 ? false
//                                                 : true);
//                                     context.read<favouriteBloc>().add(
//                                         makeFavourite(
//                                             item: FavouriteItemModel));
//                                   },
//                                   icon: Icon(item.isFavourite
//                                       ? Icons.favorite
//                                       : Icons.favorite_outline_outlined))));
//                     });
//             }
//           }),
//         ));
//   }
// }

import 'package:bloc_app/bloc/favouriteapp/favourite_app_bloc.dart';
import 'package:bloc_app/bloc/favouriteapp/favourite_app_event.dart';
import 'package:bloc_app/bloc/favouriteapp/favourite_app_state.dart';
import 'package:bloc_app/models/favourite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

class FavouriteAppScreen extends StatefulWidget {
  @override
  State<FavouriteAppScreen> createState() => _FavouriteAppScreenState();
}

class _FavouriteAppScreenState extends State<FavouriteAppScreen> {
  @override
  void initState() {
    super.initState();
    context.read<favouriteBloc>().add(fetchFavouriteList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite app")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<favouriteBloc, FavouriteItemListStates>(
          builder: (context, state) {
            switch (state.listStatus) {
              case ListStatus.loading:
                return Center(child: CircularProgressIndicator());
              case ListStatus.failure:
                return Center(child: Text("Something went wrong"));
              case ListStatus.success:
                return ListView.builder(
                  itemCount: state.favouriteItemList.length,
                  itemBuilder: (context, index) {
                    final item = state.favouriteItemList[index];
                    return Card(
                      child: ListTile(
                        title: Text(item.value.toString()),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  favouriteItemModel updatedItem =
                                      favouriteItemModel(
                                    id: item.id,
                                    value: item.value,
                                    isFavourite: !item.isFavourite,
                                  );
                                  context
                                      .read<favouriteBloc>()
                                      .add(makeFavourite(item: updatedItem));
                                },
                                icon: Icon(
                                  item.isFavourite
                                      ? EvaIcons.heart
                                      : EvaIcons.heart_outline,
                                  color: item.isFavourite ? Colors.red : null,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  context
                                      .read<favouriteBloc>()
                                      .add(deleteitem(id: item.id));
                                },
                                icon: Icon(
                                  item.isDeleting
                                      ? EvaIcons.person_delete
                                      : EvaIcons.person_delete_outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
            }
          },
        ),
      ),
    );
  }
}
