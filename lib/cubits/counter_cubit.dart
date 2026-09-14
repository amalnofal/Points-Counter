import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubits/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void addPointsToTeam({required String team, required int points}) {
    if (team == "A") {
      teamAPoints += points;
      emit(TeamAIncrementState());
    } else {
      teamBPoints += points;
      emit(TeamBIncrementState());
    }
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }
}
