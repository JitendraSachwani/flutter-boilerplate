import 'package:flutter/foundation.dart';

import 'package:flutter_boilerplate/domain/services/generic_service.dart';
import 'package:flutter_boilerplate/domain/models/model1.dart';

class Model1sService extends GenericService {
  const Model1sService();

  static const Model1sService instance = Model1sService();

  @override
  String dbName() {
    // TODO: implement dbName
    return 'dbName';
  }

  @override
  String dbTableName() {
    // TODO: implement dbTableName
    throw UnimplementedError();
  }
}
