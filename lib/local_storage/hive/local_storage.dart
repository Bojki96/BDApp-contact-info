import 'package:hive/hive.dart';

// TODO: ADD TYPES OF BOXES
class LocalStorage {
  static Future init({required List<String> boxes}) async {
    for (int index = 0; index < boxes.length; index++) {
      await Hive.openBox(boxes[index]);
    }
  }

  static registerAdapters({required List adapters}) {
    for (int index = 0; index < adapters.length; index++) {
      Hive.registerAdapter(adapters[index]);
    }
  }

  static close() async {
    await Hive.close();
  }

  static Future put(
    String boxName, {
    required final key,
    required final object,
  }) async {
    await Hive.box(boxName).put(key, object);
  }

  static get({
    required String boxName,
    required final key,
  }) {
    return Hive.box(boxName).get(key);
  }

  static keysPreview(String boxName) {
    print(Hive.box(boxName).keys);
  }

  static valuesPreview(String boxName) {
    print(Hive.box(boxName).values);
  }
}
