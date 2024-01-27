import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Paycheck Calculator',
      home: PaycheckCalculator(),
    );
  }
}

class PaycheckCalculator extends StatefulWidget {
  const PaycheckCalculator({super.key});

  @override
  State<StatefulWidget> createState() => _PaycheckCalculatorState();
}

class _PaycheckCalculatorState extends State<PaycheckCalculator> {
  TextEditingController hoursController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  double regularPay = 0;
  double overtimePay = 0;
  double totalPay = 0;
  double tax = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paycheck Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: hoursController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Hours Worked',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: rateController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Hourly Rate',
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Calculate paycheck
                      double? hours = double.tryParse(hoursController.text);
                      double? rate = double.tryParse(rateController.text);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'Results:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  'Regular Pay: \$$regularPay',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Overtime Pay: \$$overtimePay',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Total Pay: \$$totalPay',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Tax: \$$tax',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 64),
            const Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Shubham Patel',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '301366205',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
