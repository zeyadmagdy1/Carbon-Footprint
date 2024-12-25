import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
    required this.totalFootprint,
    required this.categoryBreakdown,
  });

  // Parameters for dynamic data
  final double totalFootprint;
  final Map<String, double> categoryBreakdown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Main container showing month use
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(182, 76, 175, 79),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Your Monthly Carbon Footprint",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        "${totalFootprint.toStringAsFixed(2)} Ton CO2",
                        style: const TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Icon(
                        Icons.eco,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Section for detailed analysis
            const Text(
              "Detailed Breakdown",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Categories for different sources of carbon footprint
            _buildCategory(
                "Transport",
                categoryBreakdown['Transport']?.toStringAsFixed(2) ?? '0.0',
                Colors.blue),
            const SizedBox(height: 16),
            _buildCategory(
                "Electricity",
                categoryBreakdown['Electricity']?.toStringAsFixed(2) ?? '0.0',
                Colors.orange),
            const SizedBox(height: 16),
            _buildCategory(
                "Waste",
                categoryBreakdown['Waste']?.toStringAsFixed(2) ?? '0.0',
                Colors.red),
            const SizedBox(height: 16),
            _buildCategory(
                "Food Consumption",
                categoryBreakdown['Food Consumption']?.toStringAsFixed(2) ??
                    '0.0',
                Colors.purple),

            const SizedBox(height: 30),

            // Analysis suggestion section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(182, 76, 175, 79),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Suggestions to Reduce Your Carbon Footprint",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Consider carpooling or using public transport more often.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "- Reduce electricity consumption by turning off lights when not needed.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "- Recycle waste and reduce single-use plastics.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "- Consider plant-based meals to reduce food-related emissions.",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build each category with a label and value
  Widget _buildCategory(String title, String value, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            "$value Ton CO2",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
