// ignore_for_file: file_names

import 'package:celebi/view/package_info/model/package_info_model.dart';

abstract class IPackageInfoService {
  Future<List<PackageInfoModel?>?> fetchPackageInformation(String token);
}
