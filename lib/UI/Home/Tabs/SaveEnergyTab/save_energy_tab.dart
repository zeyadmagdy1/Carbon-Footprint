import 'package:carpon_footprint/UI/Home/Tabs/SaveEnergyTab/SaveEnergy.dart';
import 'package:carpon_footprint/UI/Home/Tabs/SaveEnergyTab/saveEnergyItem.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SaveEnergyTab extends StatelessWidget {
  var saveEnergyList = SaveEnergy.getSaveEnergyList();
  SaveEnergyTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SaveEnergyItem(
                      saveEnergy: saveEnergyList[index],
                    ),
                  ),
              itemCount: saveEnergyList.length),
        )
      ],
    );
  }
}
