import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:retrofit/retrofit.dart';

@RestApi()
abstract class UserApi {
  @GET('/users/subscriptions')
  Future<List<Subscription>> getUserSubscriptions();
}
