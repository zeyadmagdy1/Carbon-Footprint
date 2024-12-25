import 'package:flutter/material.dart';
import 'package:carpon_footprint/UI/Home/Tabs/CalculatorTab/qustion_item.dart';

class CalculatorTab extends StatefulWidget {
  final void Function(double totalFootprint) onFootprintCalculated;

  const CalculatorTab({Key? key, required this.onFootprintCalculated})
      : super(key: key);

  @override
  State<CalculatorTab> createState() => _CalculatorTabState();
}

class _CalculatorTabState extends State<CalculatorTab> {
  // Map to store user inputs
  final Map<String, double> userInputs = {};

  // Emission factors in tons CO2 per unit
  final Map<String, double> emissionFactors = {
    "Vehicles": 0.21, // tons CO2 per km
    "Diesel": 0.25,
    "Electric vehicles": 0.08,
    "Hybrid vehicles": 0.1,
    "Gasoline car": 0.23,
    "Bus": 0.05,
    "Train": 0.04,
    "Air travel": 0.15,
  };

  // Function to calculate the total footprint
  double calculateFootprint() {
    double total = 0;
    userInputs.forEach((key, value) {
      if (emissionFactors.containsKey(key)) {
        total += emissionFactors[key]! * value;
      }
    });
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          QuestionItem(
            title: "Transportation :",
            question: "What kind of transportation do you use?",
            options: emissionFactors.keys.toList(),
            onInputChanged: (option, value) {
              setState(() {
                userInputs[option] = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final totalFootprint = calculateFootprint();
              widget.onFootprintCalculated(
                  totalFootprint); // Pass the result to parent
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Your Carbon Footprint"),
                  content: Text(
                      "Total: ${totalFootprint.toStringAsFixed(2)} Ton CO2"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Calculate"),
          ),
        ],
      ),
    );
  }
}
