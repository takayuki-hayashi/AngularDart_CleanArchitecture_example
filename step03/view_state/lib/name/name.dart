import 'package:angular/angular.dart';
import 'package:state/name/name.dart';
import 'package:domain/name/name.dart';

@Injectable()
class NameViewState extends NameState {
  Name name = new Name.empty();
}