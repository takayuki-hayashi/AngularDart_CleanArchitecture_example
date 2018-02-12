import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:component/src/component_center.dart';
import 'package:component/src/component_left.dart';
import 'package:component/src/component_right.dart';
import 'package:component/src/component_list.dart';
import 'package:component/src/component_search.dart';
import 'package:view_state/name/name.dart';
import 'package:state/name/name.dart';
import 'package:state/item/item.dart';
import 'package:view_state/item/item.dart';
import 'package:port/item/item_port.dart';
import 'package:gateway/item/item_gateway.dart';
import 'package:gateway/name/name_gateway.dart';
import 'package:port/name/name_port.dart';
import 'package:usecase/name/name_usecase.dart';
import 'package:usecase/item/item_usecase.dart';


@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,ComponentCenter, ComponentLeft, ComponentRight, ComponentList, ComponentSearch],
  providers: const [
    materialProviders,
    NameUseCase,
    ItemUseCase,
    const Provider(NameState, useClass: NameViewState),
    const Provider(NameViewState, useExisting: NameState),
    const Provider(ItemState, useClass: ItemViewState),
    const Provider(ItemViewState, useExisting: ItemState),
    const Provider(ItemPort, useClass: ItemGateway),
    const Provider(NamePort, useClass: NameGateway)
  ],
)
class AppComponent {
}