import 'package:carpon_footprint/UI/Home/Tabs/AccountTab/customButton.dart';
import 'package:carpon_footprint/UI/Sign%20In/sign_in_screan.dart';
import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomButton(
            txt: "Account Details",
            myCallBackFun: () {},
          ),
          CustomButton(
            txt: "Log Out",
            myCallBackFun: () {
              Navigator.pushReplacementNamed(context, SignInPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
