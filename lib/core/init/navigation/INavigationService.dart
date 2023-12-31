// ignore: file_names
abstract class INavigationService {
  Future<void> navigateToPage({String? path, Object? data});
  Future<void> replaceToPage({String? path, Object? data});
  Future<void> navigateToPageClear({String? path, Object? data});
}
