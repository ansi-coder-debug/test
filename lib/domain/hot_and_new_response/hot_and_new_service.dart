import 'package:dartz/dartz.dart';
import 'package:test/domain/hot_and_new_response/model/hot_and_new_response.dart';
import 'package:test/domain/core/failures/main_failure.dart'; 


abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewResponse>> getHotAndNewMovieData();
   Future<Either<MainFailure, HotAndNewResponse>> getHotAndNewTvData();
}
 
 /*
 // This is inside your HotAndNewService class
Future<Either<MainFailure, HotAndNewResponse>> getHotAndNewMovieData() async {
  try {
    // Make actual API call
    final response = await http.get(
      Uri.parse("https://api.themoviedb.org/3/movie/now_playing?api_key=YOUR_API_KEY"),
      headers: {'Content-Type': 'application/json'},
    );

    // If server returns success status code
    if (response.statusCode == 200) {
      // Decode the JSON response body
      final jsonData = json.decode(response.body);

      // Convert JSON data into your model object
      final hotAndNewResponse = HotAndNewResponse.fromJson(jsonData);

      // Wrap the result in a Right to represent success
      return Right(hotAndNewResponse);
    } else {
      // If status is not 200, treat as server failure
      return Left(MainFailure.serverFailure());
    }
  } catch (e) {
    // If an error occurred during request (e.g., no internet), treat as client failure
    return Left(MainFailure.clientFailure());
  }
}
*/