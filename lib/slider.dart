import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double lvalue = 0.0;
  double uvalue = 200.0;
  RangeValues values = const RangeValues(0.0, 200.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SliderTheme(
        data: SliderThemeData(),
        child: RangeSlider(
            divisions: 20,
            labels: RangeLabels(values.start.toString(), values.end.toString()),
            min: lvalue,
            max: uvalue,
            values: values,
            onChanged: (value) {
              setState(() {
                values = value;
              });
            }),
      )),
    );
  }
}
