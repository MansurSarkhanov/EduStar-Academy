import 'package:exapmle_app1/Product/Constants/app_colors.dart';
import 'package:exapmle_app1/Product/Constants/app_strings.dart';
import 'package:exapmle_app1/Product/Constants/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../Core/Models/user_card_model.dart';
import '../../../Product/Constants/app_paths.dart';
import '../../Components/custom_text.dart';
import 'Widgets/custom_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.bankName,
          style: TextStyle(color: Colors.white),
        ),
        leading: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.profileBgColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppPath.profile),
          ),
        ),
      ),
      body: Column(children: [
        AppSizedBox().sizedBoxH(30),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomText(text: AppString.balance, size: 16),
                  CustomText(
                    textColor: Colors.green,
                    text: '\$ 68995',
                    size: 30,
                  )
                ],
              ),
              CustomSearch(),
            ],
          ),
        ),
        AppSizedBox().sizedBoxH(24),
        _userCardListView(context),
        const Padding(
          padding: EdgeInsets.only(top: 24.0, left: 20, bottom: 12),
          child: Row(
            children: [
              CustomText(
                text: AppString.finance,
                size: 20,
              ),
            ],
          ),
        ),
        _userCardListView(context),
      ]),
    );
  }

  SizedBox _userCardListView(BuildContext context) {
    return SizedBox(
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        itemCount: userCardModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                width: 170,
                decoration:
                    const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), color: Colors.green),
                child: Column(
                  children: [
                    const CustomText(text: 'VISA', size: 20),
                    CustomText(text: userCardModel[index].title, size: 12),
                    CustomText(text: userCardModel[index].cardNumber, size: 12),
                  ],
                ),
              ),
              AppSizedBox().sizedBoxW(13)
            ],
          );
        },
      ),
    );
  }
}


List<UserCardModel> userCardModel = [
  UserCardModel(title: "Salary", cardNumber: '398472948729847298', price: '5467'),
  UserCardModel(title: "Saving Accoubt", cardNumber: '398472948729847298', price: '5467'),
  UserCardModel(title: "Sadiq", cardNumber: '398472948729847298', price: '5467'),
  UserCardModel(title: "Soltan", cardNumber: '398472948729847298', price: '5467'),
  UserCardModel(title: "Manusr", cardNumber: '398472948729847298', price: '5467')
];
