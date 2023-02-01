import 'package:beegains_mech_test/logic/fetch_sales.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sales_event.dart';
part 'sales_state.dart';

class SalesBloc extends Bloc<SalesEvent, SalesState> {
  SalesBloc() : super(Initial()) {
    on<SalesEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FetchSales>((event, emit) {
      fetchSales();
    });
  }
}
