import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:musicapp/style/colors.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class SliderCheck extends StatefulWidget {
  const SliderCheck({super.key});

  @override
  State<SliderCheck> createState() => _SliderCheckState();
}

class _SliderCheckState extends State<SliderCheck> {

  double _volumeValue = 70;

  void onVolumeChanged(double value) {
    setState(() {
      _volumeValue = value;
    });
  }

  // MarkerPointer(
  // value: 50,
  // enableDragging: true,
  // onValueChanged: onVolumeChanged,
  // markerHeight: 34,
  // markerWidth: 34,
  // markerType: MarkerType.circle,
  // color: Color(0xFF753A88),
  // borderWidth: 2,
  // borderColor: Colors.white54)
  // ],      )
  double initial=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        title: Text('Slider',style: TextStyle(color: wColor),),
      ),
      body: Column(
        children: [

          Slider(


            min: 0,
              max: 10,


              value: initial, onChanged: (val){
            setState(() {
              initial=val;
            });

          }),
          SleekCircularSlider(
            appearance: SleekCircularSlider.defaultAppearance,
            min: 0,
            max: 50,
            initialValue: 10,
          ),

      SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(minimum: 0,
              maximum: 100,
              startAngle: 270,
              endAngle: 270,
              showLabels: false,
              showTicks: false,
              radiusFactor: 0.6,
              axisLineStyle: AxisLineStyle(
                  cornerStyle: CornerStyle.endCurve,
                  color: Colors.black12,
                  thickness: 8),
              pointers: <GaugePointer>[
                RangePointer(
                  value: _volumeValue,
                  cornerStyle: CornerStyle.bothFlat,
                  width: 8,
                  sizeUnit: GaugeSizeUnit.logicalPixel,
                  color:  btnColor,

                ),
                MarkerPointer(
                    value: _volumeValue,
                    enableDragging: true,
                    onValueChanged: onVolumeChanged,
                    markerHeight: 10,
                    markerWidth: 10,
                    markerType: MarkerType.circle,
                    color: btnColor,
                    borderWidth: 4,
                    borderColor:btnColor)
              ],
            )
          ]
      ),

        ],
      ),
    );
  }
}
