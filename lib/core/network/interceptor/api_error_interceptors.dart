import 'package:mbs_crm/core/network/interceptor/dio_connectivity_request_retrier.dart';
import 'package:mbs_crm/core/database/local_preference.dart';
import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  AppInterceptors({required this.requestRetrier});
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 ||
        err.response?.statusMessage == 'Unauthorized') {
      // final context = getIt<AppRouter>().navigatorKey.currentContext;
      clearLocalStorage();
      // final router = AutoRouter.of(context!);
      // router.replaceAll([PageRouteInfo(LoginPage.name)]);
    }
    return handler.next(err);
  }
}
