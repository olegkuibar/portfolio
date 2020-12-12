import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:portfolio_angular_app/app_component.dart';
import 'package:portfolio_angular_app/app_component.template.dart' as appTmp;
import 'main.template.dart' as self;

import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';


import 'Utils/injector-prob.dart';

NgTestFixture<AppComponent> fixture;

@GenerateInjector([
  ClassProvider(RouterOutlet),
  ClassProvider(RouterLink),
  ClassProvider(RouterLinkActive)
])
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final injector = InjectorProbe(rootInjector);
  final testBed =
      NgTestBed.forComponent<AppComponent>(appTmp.AppComponentNgFactory, rootInjector: injector.factory);

  setUp(() async {
    fixture = await testBed.create();
  });


  tearDown(disposeAnyRunningTest);
  
  test('Should contain three sections', () {
    final sections = fixture.rootElement.getElementsByClassName('section');
    int count = 0;

    sections.forEach((element) => count++ );

    expect(count, 3);
  });
}