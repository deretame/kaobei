import 'package:auto_route/auto_route.dart';
import 'package:kaobei/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: NavigationBarRoute.page, initial: true),
    AutoRoute(page: SearchResultRoute.page),
    AutoRoute(page: ComicInfoRoute.page),
    AutoRoute(page: ChapterCommentRoute.page),
    AutoRoute(page: TagAuthorSearchRoute.page),
    AutoRoute(page: CommentRoute.page),
    AutoRoute(page: CommentChildrenRoute.page),
    AutoRoute(page: DownloadRoute.page),
    AutoRoute(page: ComicReadRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
