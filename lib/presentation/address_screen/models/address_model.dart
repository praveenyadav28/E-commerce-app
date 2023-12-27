import '../../../core/app_export.dart';
import 'addresslist_item_model.dart';

/// This class defines the variables used in the [address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddressModel {
  Rx<List<AddresslistItemModel>> addresslistItemList = Rx([
    AddresslistItemModel(
        priscekila: "Priscekila".obs,
        address:
            "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States"
                .obs,
        mobileNo: "+99 1234567890".obs,
        edit: "Edit".obs,
        delete: "Delete".obs),
    AddresslistItemModel(
        priscekila: "Ahmad Khaidir".obs,
        address:
            "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States"
                .obs,
        mobileNo: "+99 1234567890".obs,
        edit: "Edit".obs,
        delete: "Delete".obs)
  ]);
}
