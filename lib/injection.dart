import 'core/hive/hive_client.dart';

Future<void> init() async {

  //init Hive (Local Storage)
  await HiveClient.globalInitialize();
}