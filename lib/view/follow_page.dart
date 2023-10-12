import 'package:flutter/material.dart';
import 'package:flutter_test_profile/constant/app_colors.dart';
import 'package:flutter_test_profile/constant/app_images.dart';
import 'package:flutter_test_profile/constant/list_images.dart';

class FollowPage extends StatelessWidget {
  const FollowPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "petemckeon",
          style: TextStyle(
              color: AppColors.allTextColor,
              fontSize: 18,
              fontFamily: "Gelion_Medium"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        "7 followers",
                        style: TextStyle(
                            color: AppColors.lightBlue,
                            fontSize: 16,
                            fontFamily: "Gelion_Medium"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        color: AppColors.allTextColor,
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        "9 following",
                        style: TextStyle(
                            color: AppColors.lightGrey,
                            fontSize: 16,
                            fontFamily: "Gelion_Medium"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.5,
                        color: AppColors.lightGrey,
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Image.asset(AppImages.p1Image)
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ListImages.followersImage.length,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            ListImages.followersImage[index],
                            height: 56,
                            width: 56,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    ListImages.followersName[index],
                                    style: TextStyle(
                                        color: AppColors.allTextColor,
                                        fontSize: 16,
                                        fontFamily: "Gelion_Medium"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  index == 3 || index == 6
                                      ? Image.asset(
                                          AppImages.blue_tik,
                                          height: 12,
                                          width: 12,
                                        )
                                      : SizedBox()
                                ],
                              ),
                              Text(
                                ListImages.followersDesc[index],
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 16,
                                    fontFamily: "Gelion_Regular"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.darkBlue,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          "Remove",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Gelion_Regular"),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
