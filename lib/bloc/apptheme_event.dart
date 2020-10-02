part of 'apptheme_bloc.dart';

class AppThemeEvent extends Equatable {
  final ThemeData theme;

  const AppThemeEvent(this.theme);

  @override
  List<Object> get props => [theme];
}
