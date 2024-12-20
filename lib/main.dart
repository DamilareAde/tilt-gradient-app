import 'package:flutter/material.dart';
import 'sensor_service.dart';
import 'tilt_gradient_screen.dart';

void main() {
  runApp(const TiltGradientApp());
}

class TiltGradientApp extends StatelessWidget {
  const TiltGradientApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TiltGradientScreen(sensorService: SensorService()),
    );
  }
}
