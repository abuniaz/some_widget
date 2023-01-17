import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  // double lvalue = 0.0;
  // double uvalue = 200.0;
  // RangeValues values = const RangeValues(0.0, 200.0);
  double _value = 0.0;

  var SfSlider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.red[700],
            inactiveTrackColor: Colors.red[100],
            trackShape: const RectangularSliderTrackShape(),
            trackHeight: 20.0,
            thumbColor: Colors.redAccent,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayColor: Colors.red.withAlpha(32),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
          ),
          child: SfSlider.vertical(
            min: 0,
            max: 200,
            interval: 20,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
