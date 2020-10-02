import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:todolist/themes/app_themes.dart';

part 'apptheme_event.dart';
part 'apptheme_state.dart';

class AppthemeBloc extends Bloc<AppThemeEvent, AppthemeState> {
  AppthemeBloc() : super(AppthemeState(AppTheme.lightTheme));

  @override
  Stream<AppthemeState> mapEventToState(
    AppThemeEvent event,
  ) async* {
    if (event is AppThemeEvent) {
      yield AppthemeState(event.theme);    }
  }
}
