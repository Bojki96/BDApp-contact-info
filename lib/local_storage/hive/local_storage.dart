import 'package:hive/hive.dart';

// TODO: ADD TYPES OF BOXES
class LocalStorage {
  static init({required List<String> boxes}) async {
    for (int index = 0; index < boxes.length; index++) {
      await Hive.openBox(boxes[index]);
    }
  }

  static close() async {
    await Hive.close();
  }

  static put() {}
  static get() {}
}
