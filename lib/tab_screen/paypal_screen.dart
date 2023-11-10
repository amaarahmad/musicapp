import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/button_component.dart';
import 'package:musicapp/style/colors.dart';
class PaypalScreen extends StatelessWidget {
  const PaypalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Image.asset(AppAssets.paypal),
        const SizedBox(
          height: 50,
        ),
        Container(
          width: 301,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter your email address',
              hintStyle: TextStyle(color: wColor.withOpacity(0.4),fontSize:17)
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
       PaymentButton(title: 'Pay with PayPal'),
      ],
    );
  }
}
