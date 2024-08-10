import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeChange extends HydratedCubit<ThemeMode> {
  ThemeChange() : super(ThemeMode.dark);

  void UpdateTheme(ThemeMode themeMode) => emit(themeMode);
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    throw UnimplementedError();
  }
}
