part of 'toggle_bloc.dart';

abstract class ToggleState extends Equatable {
  const ToggleState();

  @override
  List<Object> get props => [];
}
class ToggleInitialState extends ToggleState {
  final bool isOn;

  const ToggleInitialState({required this.isOn});

  @override
  List<Object> get props => [
    isOn,
  ];
}
