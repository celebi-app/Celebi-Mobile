import 'package:celebi/view/package_info/model/package_info_model.dart';
import 'package:celebi/view/package_info/service/IPackageInfoService.dart';
import 'package:dio/dio.dart';

import '../../../core/init/network/network_service.dart';

class PackageInfoService extends IPackageInfoService {
  PackageInfoService(this._network);

  final NetworkService _network;

  @override
  Future<List<PackageInfoModel?>?> fetchPackageInformation(String token) async {
    try {
      final response = await _network.dio.get(
        "/Uye/paket",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200) {
        print(response);
        final responseData = response.data as List<dynamic>;
        final packageInfoList = responseData.map((json) => PackageInfoModel.fromJson(json)).toList();
        return packageInfoList;
      } else {
        final errorMessage = response.data as String;
        return Future.error(errorMessage);
      }
    } catch (e) {
      return Future.error("Hata: $e");
    }
  }
}
