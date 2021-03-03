
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/services/upload_data_service.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  NavigationService get navigationService;

  @lazySingleton
  DialogService get dialogService;

  @lazySingleton
  SnackbarService get snackBarService;
  @lazySingleton
  UploadDataService get uploadDataService;
}
