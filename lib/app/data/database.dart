import '../models/contact_info_model.dart';

abstract class DatabaseModule {
  Future<List<ContactInfoModel>> getAllContacts() async {
    return [];
  }
}
