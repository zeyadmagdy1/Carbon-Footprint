import 'package:carpon_footprint/UI/Home/Tabs/SaveEnergyTab/SaveEnergy.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

// ignore: must_be_immutable
class SaveEnergyItem extends StatelessWidget {
  final SaveEnergy saveEnergy;

  SaveEnergyItem({required this.saveEnergy, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure appLink is valid
    final appLinkUri = Uri.tryParse(saveEnergy.appLink);
    if (appLinkUri == null) {
      return const Center(child: Text('Invalid app link'));
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 99, 228, 103),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Name of the application
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  saveEnergy.appName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              // Logo of the application
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    saveEnergy.appLogoUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Text(saveEnergy.appDescription),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(saveEnergy.appLink),
            builder: (context, followLink) => ElevatedButton(
              onPressed: followLink,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 159, 30),
              ),
              child: const Text(
                "Download the app",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
