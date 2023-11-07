import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/screens/filters.dart';

enum Filters { glutenFree, lactoseFree, vegetarian, vegan }

class FiltersNotifier extends StateNotifier<Map<Filters, bool>> {
  FiltersNotifier()
      : super({
          Filters.glutenFree: false,
          Filters.lactoseFree: false,
          Filters.vegetarian: false,
          Filters.vegan: false,
        });

  void setFilters(Map<Filters, bool> choosenFilters) {
    state = choosenFilters;
  }

  void setFilter(Filters filter, bool isActive) {
    // state[filter] = isActive; // not allower! => mutating state

    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filters, bool>>((ref) {
  return FiltersNotifier();
});
