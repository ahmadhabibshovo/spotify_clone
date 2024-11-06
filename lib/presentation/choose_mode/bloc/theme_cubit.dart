import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  changeThemeMode(ThemeMode mode) => emit(mode);
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {}
  @override
  Map<String, dynamic>? toJson(ThemeMode state) {}
}
