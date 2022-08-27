# flutter_template

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# TODO
Run flutter upgrade
Run flutter pub upgrade --major-versions
Check all TODOs

# freezed setup 05.07.2022.

1) add "freezed: ^2.0.3+1", "build_runner: ^2.1.11" and "json_serializable: ^6.2.0" to pubspec.yaml under dev_dependencies (json_serializable is needed for generating fromJson() and toJson())

2) add "freezed_annotation: ^2.0.3" and "json_annotation: ^4.5.0" to pubspec.yaml under dependencies (json_serializable: ^6.2.0 won't work without json_annotation of at least ^4.5.0)

3) in the file "my_entity.dart" decorate a class with "@freezed" annotation and other important necessities
// EXAMPLE(file name: my_entity.dart) //

import 'package:freezed_annotation/freezed_annotation.dart';

// YOU HAVE TO USE THE SAME FILE NAME FOR CODE GENERATION
part 'my_entity.freezed.dart'; // for generating freezed file
part 'my_entity.g.dart'; // for generating json serializable file

@freezed
class MyEntity with _$MyEntity {
  const factory MyEntity({required String name}) = _MyEntity;

  factory MyEntity.fromJson(Map<String, Object?> json) => _$MyEntityFromJson(json);
}

4) run command "flutter pub run build_runner build" or "flutter pub run build_runner build --delete-conflicting-outputs"

# flutter gen package setup
1) add assets folders to pubspec.yaml
2) run dart pub global activate flutter_gen
3) add under dev dependencies build_runner:
and flutter_gen_runner:
4) run command "flutter pub run build_runner build" or "flutter pub run build_runner build --delete-conflicting-outputs"
