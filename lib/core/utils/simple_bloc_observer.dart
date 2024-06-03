import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

// to be able to use bloc observer we need to create an object from the class
// in the main fiel
class SimpleBlocObserver extends BlocObserver {
  @override 
  void onChange(BlocBase bloc, Change change) {
    log(change.toString());
    super.onChange(bloc, change);
  }
}