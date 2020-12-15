import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:mockito/mockito.dart';

import 'package:portfolio_angular_app/app_component.dart';
import 'package:portfolio_angular_app/app_component.template.dart' as ng;

import 'package:angular_test/angular_test.dart';
import 'package:portfolio_angular_app/heading_component.dart';
import 'package:test/test.dart';

import 'app_test.template.dart' as self;

import 'Utils/injector-prob.dart';

// note: pageloader packge is not compatible with current version of AngularDart

@TestOn('browser')
@GenerateInjector([
  ClassProvider(OkpHeadingComponent),
  ClassProvider(Router, useClass: MockRouter),
  routerDirectives,
])
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final injector = InjectorProbe(rootInjector);

  final testBed =
      NgTestBed.forComponent<AppComponent>(ng.AppComponentNgFactory, rootInjector: injector.factory);
  NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);
  
  test('Should contain three sections', () {
    final sectionCount = fixture.rootElement.children.first.children.length; // dirty way to access 'section' node count
    expect(sectionCount, 3);
  });
}

class MockRouter extends Mock implements Router {}