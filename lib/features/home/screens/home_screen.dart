import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/components/container/white_container.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, Raka",
                    style: CustomTypography.titleSmall.copyWith(
                      color: CustomColor.secondaryColor,
                    ),
                  ),
                  const Icon(
                    Icons.notifications_none_outlined,
                    color: CustomColor.whiteColor,
                    size: 30.0,
                  ),
                ],
              ),
              const Gap(50),
              WhiteContainer(
                width: double.infinity,
                height: 200,
                childItem: Row(
                  children: [
                    Flexible(
                      child: PieChart(
                        PieChartData(
                          sections: pieChartSectionData,
                        ),
                      ),
                    ),
                    Flexible(child: Text("asdasd")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
    value: 75,
    title: 'Income',
    color: CustomColor.primaryColor,
  ),
  PieChartSectionData(
    value: 25,
    title: 'Expense',
    color: CustomColor.secondaryColor,
  ),
];
