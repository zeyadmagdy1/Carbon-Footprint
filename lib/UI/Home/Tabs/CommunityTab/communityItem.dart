import 'package:carpon_footprint/UI/Home/Tabs/CommunityTab/Community.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

// ignore: must_be_immutable
class CommunityItem extends StatelessWidget {
  final Community community;

  CommunityItem({required this.community, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure appLink is valid
    final appLinkUri = Uri.tryParse(community.appLink);
    if (appLinkUri == null) {
      return const Center(child: Text('Invalid app link'));
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color:const Color.fromARGB(255, 99, 228, 103),
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
                  community.appName,
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
                    community.appLogoUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Text(community.appDescription),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(community.appLink),
            builder: (context, followLink) => ElevatedButton(
              onPressed: followLink,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 159, 30),
              ),
              child: const Text(
                "Read More",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
