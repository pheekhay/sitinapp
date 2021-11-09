import 'package:hive/hive.dart';
import 'package:sitinapp/src/models/sitin_user.dart';

abstract class LocalCacheInterface {
  Future<void> saveToCache(Customer customer);
  Customer? getLocalUser();
  Future<void> clearCache();
}

class LocalCache implements LocalCacheInterface {
  final Box<Customer> cache = Hive.box<Customer>("userData");
  @override
  Future<void> clearCache() async {
    await cache.clear();
  }

  @override
  Customer? getLocalUser() {
    return cache.getAt(0);
  }

  @override
  Future<void> saveToCache(Customer customer) {
    return cache.putAt(0, customer);
  }
}
