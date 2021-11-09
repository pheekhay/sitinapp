import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:sitinapp/dependency_injection.dart';
import 'package:sitinapp/src/restaurant/restaurant_tile_widget.dart';
import 'package:sitinapp/src/restaurant/search_bloc/search_bloc.dart';
import 'package:sizer/sizer.dart';

class RestaurantsListView extends StatelessWidget {
  RestaurantsListView({Key? key}) : super(key: key);
  static const String routeName = "/restaurants";
  String? _query;

  final FloatingSearchBarController _searchBarController =
      FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => getDep<SearchBloc>(),
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            BlocConsumer<SearchBloc, SearchState>(
              listener: (context, state) {
                if (state is SearchError) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.brown,
                      content: Text(
                        "Could Not Find Restaurant",
                        style: TextStyle(color: Colors.white),
                      )));
                }
              },
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: ListView.separated(
                      itemCount: 15,
                      separatorBuilder: (context, i) {
                        return Divider(
                          thickness: 1,
                          height: 4,
                          color: Colors.grey[400],
                        );
                      },
                      itemBuilder: (context, i) {
                        return RestaurantTile(
                          key: Key(i.toString()),
                        );
                      }),
                );
              },
            ),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return FloatingSearchBar(
                  hint: 'Search...',
                  scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
                  transitionDuration: const Duration(milliseconds: 800),
                  transitionCurve: Curves.easeInOut,
                  physics: const BouncingScrollPhysics(),
                  transition: SlideFadeFloatingSearchBarTransition(),
                  controller: _searchBarController,
                  onQueryChanged: (query) {
                    _query = query;
                  },
                  actions: [
                    FloatingSearchBarAction(
                      showIfOpened: false,
                      child: CircularButton(
                        icon: const Icon(CupertinoIcons.search),
                        onPressed: () {
                          context
                              .read<SearchBloc>()
                              .add(SearchForRestaurant(name: _query));
                          _searchBarController.open();
                        },
                      ),
                    ),
                    FloatingSearchBarAction(
                      showIfClosed: false,
                      showIfOpened: true,
                      child: CircularButton(
                        icon: const Icon(CupertinoIcons.xmark_circle),
                        onPressed: () {
                          _searchBarController.close();
                        },
                      ),
                    ),
                  ],
                  builder: (context, transition) {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
