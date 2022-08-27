// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// final bookmarkProvider =
//     StateNotifierProvider<BookmarkProvider, List<String>>((ref) {
//   return BookmarkProvider();
// });

// class BookmarkProvider extends StateNotifier<List<String>> {
//   BookmarkProvider() : super([]);

//   init(List<String> bookmarks) {
//     state = [...bookmarks];
//   }

//   toggle(String articleId) {
//     final tmp = [...state];
//     if (tmp.contains(articleId)) {
//       tmp.remove(articleId);
//     } else {
//       tmp.add(articleId);
//     }
//     SharedPreferencesService.setBookmarks(tmp);
//     state = tmp;
//   }
// }

// final categoryProvider =
//     StateNotifierProvider<CategoryProvider, Tuple2<UniqueKey, List<Category>>>(
//         (ref) {
//   return CategoryProvider();
// });

// class CategoryProvider
//     extends StateNotifier<Tuple2<UniqueKey, List<Category>>> {
//   CategoryProvider() : super(Tuple2(UniqueKey(), [Category.naslovna]));

//   push(Category category) {
//     final categoryStack = [...state.item2];
//     categoryStack.add(category);
//     state = Tuple2(state.item1, categoryStack);
//   }

//   pop() {
//     final categoryStack = [...state.item2];
//     categoryStack.removeLast();
//     state = Tuple2(state.item1, categoryStack);
//   }

//   popToMainPage() {
//     state = Tuple2(UniqueKey(), [Category.naslovna]);
//   }
// }

// final tagProvider = StateNotifierProvider<TagProvider, List<String>>((ref) {
//   return TagProvider();
// });

// class TagProvider extends StateNotifier<List<String>> {
//   TagProvider() : super([]);

//   init(List<String> tags) {
//     state = [...tags];
//   }

//   toggle(String articleId) {
//     final tmp = [...state];
//     if (tmp.contains(articleId)) {
//       tmp.remove(articleId);
//     } else {
//       tmp.add(articleId);
//     }
//     SharedPreferencesService.setTags(tmp);
//     state = tmp;
//   }
// }
