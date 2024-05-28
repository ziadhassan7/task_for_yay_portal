import 'package:equatable/equatable.dart';


abstract class SubmitButtonStates extends Equatable {
  const SubmitButtonStates();
}

// Loading
class LoadingState extends SubmitButtonStates {

  @override
  List<Object> get props => [];
}

// Idle
class IdleState extends SubmitButtonStates {

  @override
  List<Object?> get props => [];
}

// Success
class SuccessState extends SubmitButtonStates {

  @override
  List<Object?> get props => [];
}

// Error
class ErrorState extends SubmitButtonStates {

  @override
  List<Object?> get props => [];
}
