import 'package:flutter/material.dart';
import 'DashboardTopLeft/dashBoardTopLeft.dart';
import 'DashboardTopRight/dashboardRight.dart';
import 'LatestOrders/latestOrder.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.65,
              child: Row(
                children: [
                  topLeft(size, context),
                  topRight(size),
                  //side a je 2 ta Container Ace oi ta

                ],
              ),
            ),
            const Expanded(
              child: LatestOrderPage()
            )
          ],
        ),
      ),
    );
  }
}
