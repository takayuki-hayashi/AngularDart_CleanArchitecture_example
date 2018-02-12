import 'package:angular/angular.dart';
import 'package:step03/app_component.dart';
import 'main.template.dart' as ng;

void main() {
  bootstrapStatic(AppComponent,[], ng.initReflector);
}
