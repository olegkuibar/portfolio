import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'heading_component.dart';
import 'src/core/route_paths.dart';
import 'src/core/routes.dart';

@Component(
    selector: 'my-app',
    templateUrl: './app_component.html',
    styleUrls: ['./app_component.css'],
    directives: [...routerDirectives, OkpHeadingComponent],
    exports: [RoutePaths, Routes])
class AppComponent {}
