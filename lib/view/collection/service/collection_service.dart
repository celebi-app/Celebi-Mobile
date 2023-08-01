import 'package:celebi/view/collection/model/collection_model.dart';
import 'package:dio/dio.dart';

import '../../../core/init/network/network_service.dart';
import 'ICollectionService.dart';

class CollectionService extends ICollectionService {
  CollectionService(this._network);

  final NetworkService _network;

  @override
  Future<List<CollectionModel?>?> fetchCollections(String token) async {
    try {
      final response = await _network.dio.get(
        "/Uye/tahsilat",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200) {
        final responseData = response.data as List<dynamic>;
        final collectionsList = responseData.map((json) => CollectionModel.fromJson(json)).toList();
        return collectionsList;
      } else {
        final errorMessage = response.data as String;
        return Future.error(errorMessage);
      }
    } catch (e) {
      return null;
    }
  }
}
