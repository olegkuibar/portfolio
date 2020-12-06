import 'package:angular_app/src/project-details_component.template.dart' as pdTmp;
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final project_details = RouteDefinition(
    routePath: RoutePaths.project_details,
    component: pdTmp.OkpProjectDetailsComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    project_details,
  ];
}
