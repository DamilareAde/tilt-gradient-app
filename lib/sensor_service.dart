import 'package:sensors_plus/sensors_plus.dart';

class SensorService {
  Stream<AccelerometerEvent> get accelerometerEvents => sensorsPlusAccelerometerEvents;
}

// This function directly references the sensors_plus accelerometer stream.
Stream<AccelerometerEvent> get sensorsPlusAccelerometerEvents => accelerometerEvents;
