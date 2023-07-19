import 'package:celebi/view/package_info/model/package_info_model.dart';
import 'package:celebi/view/package_info/service/IPackageInfoService.dart';
import 'package:dio/dio.dart';

import '../../../core/init/network/network_service.dart';

class PackageInfoService extends IPackageInfoService {
  PackageInfoService(this._network);

  final NetworkService _network;

  @override
  Future<PackageInfoModel?> fetchPackageInformation(String token) async {
    try {
      final response = await _network.dio.get("http://10.0.2.2:5000/user_paket", options: Options(headers: {"Authorization": "Bearer $token"}), data: token);
      if (response.statusCode == 200) {
        return PackageInfoModel.fromJson(response.data);
      } else {
        final errorMessage = response.data['error'] as String;
        return Future.error(errorMessage);
      }
    } catch (e) {
      return Future.error("Hata: $e");
    }
  }
}
