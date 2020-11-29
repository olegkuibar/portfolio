import 'package:angular_router/angular_router.dart';

import 'route_path_leaf.dart';

class RoutePaths {
  static final home = RoutePath(path: '/');
  static final projects = RoutePath(path: RoutePathLeafs.project);
  static final project_details =
      RoutePath(path: '${RoutePathLeafs.project}/:name');
}
