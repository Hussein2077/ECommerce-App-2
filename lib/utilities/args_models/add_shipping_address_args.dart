import 'package:graduation_project/controllers/database_controller.dart';
import 'package:graduation_project/models/shipping_address.dart';

class AddShippingAddressArgs {
  final Database database;
  final ShippingAddress? shippingAddress;

  AddShippingAddressArgs({required this.database, this.shippingAddress});
}
