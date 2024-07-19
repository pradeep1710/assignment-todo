import 'package:hive_flutter/hive_flutter.dart';

import '../enums/storage_box_enum.dart';

class StorageService {
  static StorageService instance = StorageService._();
  StorageService._();

  late Box _dataBox;

  Future<void> init() async {
    _dataBox = await Hive.openBox(StorageBoxEnum.data.name);
  }

  // get data from local storage
  Object? getData(StorageDataKeyEnum key) {
    return _dataBox.get(key.name);
  }

  // set data in local storage
  Future<void> setData(StorageDataKeyEnum key, Object data) async {
    await _dataBox.put(key.name, data);
  }

  // remove data from local storage
  Future<void> removeData(StorageDataKeyEnum key) async {
    _dataBox.delete(key.name);
  }
}
