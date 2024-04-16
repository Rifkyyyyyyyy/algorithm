// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'recipes.g.dart';
// part 'recipes.freezed.dart';

// @freezed
// class Data with _$Data {
//   const factory Data(
//       {@JsonKey(name: 'recipes', required: true) Recipes recipes,
//       @JsonKey(name: 'total', required: true) final int total,
//       @JsonKey(name: 'skip', required: true) final int skip,
//       @JsonKey(name: 'limit', required: true) final int limit}) = _Data;

//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

// @freezed
// class Recipes with _$Recipes {
//   const factory Recipes(
//       {required final int id,
//       required final String name,
//       required final List<String> ingredients,
//       required final List<String> instructions,
//       @JsonKey(name: 'prepTimeMinutes', required: true)
//       final int prepTimeMinutes,
//       @JsonKey(name: 'cookTimeMinutes', required: true)
//       final int cookTimeMinutes,
//       required final int servings,
//       required final String difficulty,
//       required final String cuisine,
//       @JsonKey(name: 'caloriesPerServing', required: true)
//       final int caloriesPerServing,
//       required List<String> tags,
//       @JsonKey(name: 'userId', required: true) final int userId,
//       required final String image,
//       required final double rating,
//       @JsonKey(name: 'reviewCount', required: true) final int reviewCount,
//       required final List<String> mealType}) = _Recipes;
// }
