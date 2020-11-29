import 'package:angular_router/angular_router.dart';
import 'package:angular_app/app_component.template.dart' as ng;

import 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: ng.AppComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
  ];
}
