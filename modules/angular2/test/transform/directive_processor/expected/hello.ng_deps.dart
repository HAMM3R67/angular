library examples.src.hello_world.index_common_dart.ng_deps.dart;

import 'hello.dart';
import 'package:angular2/angular2.dart'
    show bootstrap, Component, Directive, View, NgElement;

var _visited = false;
void initReflector(reflector) {
  if (_visited) return;
  _visited = true;
  reflector
    ..registerType(HelloCmp, {
      'factory': () => new HelloCmp(),
      'parameters': const [],
      'annotations': const [
        const Component(selector: 'hello-app'),
        const View(
            template: r'''{{greeting}}''',
            styles: const [
          r'''.greeting { .color: blue; }''',
          r'''.hello { .color: red; }''',
        ])
      ]
    });
}
