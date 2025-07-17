import 'package:bloc/bloc.dart';
import 'package:hamza/cubits/counter_cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  late int teamACounter;
  late int teamBCounter;

  void incrementTeamACounter({required int num, required String team}) {
    if (team == 'A') {
      teamACounter += num;
      emit(TeamACounterIncrement());
    } else if (team == 'B') {
      teamBCounter += num;
      emit(TeamBCounterIncrement());
    } else {
      teamACounter = 0;
      teamBCounter = 0;
      emit(ResetAllCounters());
    }
  }
}
