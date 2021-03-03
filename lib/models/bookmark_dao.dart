import 'package:instagram_clone/models/app_database.dart';
import 'package:instagram_clone/models/home_data_model.dart';
import 'package:sembast/sembast.dart';

class BookMarkDao {
  static const String USERS_STORE_NAME = 'bookmarks';

  final _bookMarks = intMapStoreFactory.store(USERS_STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future insert(HomeDataModel homeDataModel) async {
    await _bookMarks.add(await _db, homeDataModel.toMap());
  }

  Future delete(HomeDataModel homeDataModel) async {
    final finder = Finder(filter: Filter.byKey(homeDataModel.id));
    await _bookMarks.delete(
      await _db,
      finder: finder,
    );
  }

  Future<List<HomeDataModel>> getAllBookMarks() async {
    final finder = Finder(sortOrders: [
      SortOrder('channelname'),
    ]);

    final recordSnapshots = await _bookMarks.find(
      await _db,
      finder: finder,
    );
    return recordSnapshots.map((snapshot) {
      final homeDataModel = HomeDataModel.fromMap(snapshot.value);
      homeDataModel.id = snapshot.key;
      return homeDataModel;
    }).toList();
  }
}
