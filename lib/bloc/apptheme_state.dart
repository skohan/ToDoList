part of 'apptheme_bloc.dart';

class AppthemeState extends Equatable {
  final ThemeData theme;

  const AppthemeState(this.theme);

  @override
  List<Object> get props => [theme];
}
