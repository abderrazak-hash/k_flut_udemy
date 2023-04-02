import 'dart:math';

import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10.0),
          padding: const EdgeInsets.all(10),
          height: 90.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 2,
              color: altClr,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Level 1',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ' ----> ',
                        style: TextStyle(
                          fontSize: 15,
                          color: altClr,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Level 2',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10.0,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: altClr,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Transform.rotate(
                angle: pi / 2,
                child: const SizedBox(
                  height: 10.0,
                  width: 70.0,
                  child: Divider(
                    thickness: 2,
                    color: altClr,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Your position',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '54',
                    style: TextStyle(
                      fontSize: 20,
                      color: altClr,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: List.generate(
              18,
              (index) => PersonRank(rank: index + 1),
            ),
          ),
        ),
      ],
    ));
  }
}

class PersonRank extends StatelessWidget {
  final int rank;
  const PersonRank({
    super.key,
    required this.rank,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: rank < 4 ? const Color(0xFF3A6FE2) : const Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Text('$rank Sohaib Zouambia'),
          const Spacer(),
          if (rank < 4)
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
        ],
      ),
    );
  }
}
