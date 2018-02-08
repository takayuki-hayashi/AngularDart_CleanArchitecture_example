import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'component-center',
  templateUrl: 'component_center.html',
  styleUrls: const ['component_center.css'],
  directives: const [materialDirectives,CORE_DIRECTIVES, formDirectives]
)
class ComponentCenter implements OnInit {

  String input;

  ComponentCenter();

  @override
  void ngOnInit() {}

  void onChange() {
    print(input);
  }
}
