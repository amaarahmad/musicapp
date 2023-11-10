import 'package:flutter/material.dart';
import 'package:musicapp/app_assets.dart';
import 'package:musicapp/component/button_component.dart';
import 'package:musicapp/style/colors.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 180,
                  width: 286,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAssets.cardOne))),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: cardOne,
                        ),
                        const Text(
                          '9876 7654 5432 4321',
                          style: TextStyle(color: wColor, fontSize: 22),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Albert Einstein',
                                  style: TextStyle(color: wColor, fontSize: 15),
                                ),
                                Text(
                                  '03/22',
                                  style: TextStyle(color: wColor, fontSize: 15),
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: cardOne,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 180,
                  width: 286,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAssets.cardTwo))),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: cardTwo,
                        ),
                        const Text(
                          '3456 5678 7890 1234',
                          style: TextStyle(color: wColor, fontSize: 22),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Albert Einstein',
                                  style: TextStyle(color: wColor, fontSize: 15),
                                ),
                                Text(
                                  '08/21',
                                  style: TextStyle(color: wColor, fontSize: 15),
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: cardTwo,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: const Text(
              'Deatils',
              style: TextStyle(color: wColor, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Card Holder',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
              Text(
                'Albert Eintstein',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Card Number',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
              Text(
                '9876-7654-5432-4321',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exp. Date',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
              Text(
                '03/22',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CVV',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
              Text(
                '7430',
                style: TextStyle(color: wColor, fontSize: 17),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          PaymentButton(title: 'Pay with Card')
        ],
      ),
    );
  }
}
