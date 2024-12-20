// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'sensor_service.dart';

class TiltGradientScreen extends StatefulWidget {
  final SensorService sensorService;

  const TiltGradientScreen({Key? key, required this.sensorService}) : super(key: key);

  @override
  _TiltGradientScreenState createState() => _TiltGradientScreenState();
}

class _TiltGradientScreenState extends State<TiltGradientScreen> {
  double x = 0.0;
  double y = 0.0;

  @override
  void initState() {
    super.initState();
    widget.sensorService.accelerometerEvents.listen((event) {
      setState(() {
        x = event.x;
        y = event.y;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(
              -x / 10, // Adjust sensitivity
              -y / 10,
            ),
            end: Alignment(
              x / 10,
              y / 10,
            ),
            colors: [
              Colors.blue,
              Colors.purple,
              Colors.red,
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Tilt the device!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
