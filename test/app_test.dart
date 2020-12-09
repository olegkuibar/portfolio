@TestOn('browser')

import 'package:portfolio_angular_app/app_component.dart';
import 'package:portfolio_angular_app/app_component.template.dart' as ng;

import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

void main() {
  final testBed =
      NgTestBed.forComponent<AppComponent>(ng.AppComponentNgFactory);
  NgTestFixture<AppComponent> fixture;

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
