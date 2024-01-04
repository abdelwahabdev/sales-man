import 'package:crm/app/data/database/customer_database.dart';
import 'package:crm/app/data/database/leads_database.dart';
import 'package:crm/app/data/database/lost_customer_database.dart';
import 'package:get/get.dart';
import 'customer_controller.dart';
import 'leads_controller.dart';
import 'losted_customer_controller.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    LeadsDatabase().initDatabase();
    CustomersDatabase().initDatabase();
    LostedCustomersDatabase().initDatabase();
    Get.lazyPut<LeadController>(() => LeadController());
    Get.lazyPut<CustomerController>(() => CustomerController());
    Get.lazyPut<LostedCustomerController>(() => LostedCustomerController());
  }
}
