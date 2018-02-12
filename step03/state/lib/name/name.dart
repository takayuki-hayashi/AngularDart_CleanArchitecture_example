import 'package:domain/name/name.dart';

abstract class NameState {
  Name get name;

  String get nameValue => name.value;
}