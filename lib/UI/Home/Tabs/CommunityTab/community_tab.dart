import 'package:carpon_footprint/UI/Home/Tabs/CommunityTab/Community.dart';
import 'package:carpon_footprint/UI/Home/Tabs/CommunityTab/communityItem.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommunityTab extends StatelessWidget {
  var communityList = Community.communitiesList();
  CommunityTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CommunityItem(community: communityList[index]),
                  ),
              itemCount: communityList.length),
        )
      ],
    );
  }
}
