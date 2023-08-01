// ignore: file_names
import 'package:celebi/view/collection/model/collection_model.dart';

abstract class ICollectionService {
  Future<List<CollectionModel?>?> fetchCollections(String token);
}
