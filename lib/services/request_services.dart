import 'package:dio/dio.dart';

import '../models/spacex_flight_model.dart';
import '../utils/constants.dart';

class LastFlightService {
  Future<SpaceXFlightModel> getFlight() async {
    late SpaceXFlightModel flightModel;
    var flightResponse;
    try {
      flightResponse = await Dio().get(ServiseInfo.BASE_URL + ServiseInfo.PATH);
    } catch (e) {
      print(e);
    }
    flightModel = SpaceXFlightModel.fromJson(flightResponse.data);
    return flightModel;
  }
}
