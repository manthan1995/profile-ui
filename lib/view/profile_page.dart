import 'package:flutter/material.dart';
import 'package:flutter_test_profile/constant/app_colors.dart';
import 'package:flutter_test_profile/constant/app_images.dart';
import 'package:flutter_test_profile/constant/list_images.dart';
import 'package:flutter_test_profile/view/follow_page.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int? _selectedIndex;

  final List _choiceChipsList = [
    "Wellness",
    "Wildlife",
    "Conservation",
    "Diving",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      AppImages.main_bg,
                      height: 208,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profilePart(size),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          followPart(size),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          saveList(size),
                          SizedBox(
                            height: size.height * 0.06,
                          ),
                          aboutMe(size),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          passionatePart(size),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          socialItem(
                              image: ListImages.socialImageList[0],
                              socialText: ListImages.socialTextList[0]),
                          socialItem(
                              image: ListImages.socialImageList[1],
                              socialText: ListImages.socialTextList[1]),
                          socialItem(
                              image: ListImages.socialImageList[2],
                              socialText: ListImages.socialTextList[2]),
                          socialItem(
                              image: ListImages.socialImageList[3],
                              socialText: ListImages.socialTextList[3]),
                          socialItem(
                              image: ListImages.socialImageList[4],
                              socialText: ListImages.socialTextList[4]),
                          SizedBox(
                            height: size.height * 0.15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            profilePic()
          ],
        ),
      ),
    );
  }

  Widget profilePic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.35), // border color
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              AppImages.arrowImage,
              height: 14,
              width: 14,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            AppImages.profile_avatar,
            height: 96,
            width: 96,
          ),
        ),
      ],
    );
  }

  Widget profilePart(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "talib_87",
                  style: TextStyle(
                      color: AppColors.lightBlue,
                      fontSize: 28,
                      fontFamily: "Gelion_Medium"),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Image.asset(
                    AppImages.blue_tik,
                    height: 16,
                    width: 16,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Image.asset(
              AppImages.ic_share,
              height: 21,
              width: 21,
              fit: BoxFit.fill,
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text(
          "legend_company",
          style: TextStyle(
              color: AppColors.lightGrey,
              fontSize: 16,
              fontFamily: "Gelion_Regular"),
        ),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text(
          "T-dawg // Luxury, Adventure & Sustainable Travel // Digital creator // Award Winning Luxury Travel …",
          style: TextStyle(
              color: AppColors.allTextColor,
              fontSize: 16,
              fontFamily: "Gelion_Regular"),
        ),
      ],
    );
  }

  Widget followPart(Size size) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.btnColor,
          ),
          width: size.width,
          height: 48,
          child: Text("Follow",
              style: TextStyle(
                  color: AppColors.allTextColor,
                  fontSize: 18,
                  fontFamily: "Gelion_Regular")),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    isIos: true,
                    child: FollowPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Text("186",
                      style: TextStyle(
                          color: AppColors.allTextColor,
                          fontSize: 20,
                          fontFamily: "Gelion_Medium")),
                  Text("Followers",
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                          fontFamily: "Gelion_Regular")),
                ],
              ),
            ),
            Column(
              children: [
                Text("18",
                    style: TextStyle(
                        color: AppColors.allTextColor,
                        fontSize: 20,
                        fontFamily: "Gelion_Medium")),
                Text("Following",
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontFamily: "Gelion_Regular")),
              ],
            ),
            Column(
              children: [
                Text("1.4k",
                    style: TextStyle(
                        color: AppColors.allTextColor,
                        fontSize: 20,
                        fontFamily: "Gelion_Medium")),
                Text("Likes",
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontFamily: "Gelion_Regular")),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget saveList(Size size) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Image.asset(
                    AppImages.ic_save,
                    height: 20,
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
                  Image.asset(
                    AppImages.ic_map,
                    height: 20,
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
        Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lists",
                    style: TextStyle(
                        color: AppColors.allTextColor,
                        fontSize: 20,
                        fontFamily: "Gelion_Medium")),
                Text("See all",
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontFamily: "Gelion_Regular")),
              ],
            ),
            Container(
              height: 270,
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ListImages.saveImageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Image.asset(
                            ListImages.saveImageList[index],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: Text(
                              ListImages.saveImageText[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Gelion_Medium"),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget aboutMe(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("About me",
                style: TextStyle(
                    color: AppColors.allTextColor,
                    fontSize: 20,
                    fontFamily: "Gelion_Medium")),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              AppImages.profile_avatar,
              height: 24,
              width: 24,
              fit: BoxFit.fill,
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
            "T-dawg // Luxury, Adventure & Sustainable Travel // Digital creator // Award Winning Luxury Travel Creator // Ocean Lover, Environmental Advocate",
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 18,
                height: 1.35,
                fontFamily: "Gelion_Regular")),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text("Status",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontFamily: "Gelion_Regular")),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text("Nomad (32 countries)",
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 20,
                fontFamily: "Gelion_Medium")),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text("Member since",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontFamily: "Gelion_Regular")),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text("December, 2023",
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 20,
                fontFamily: "Gelion_Medium")),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text("Living in",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontFamily: "Gelion_Regular")),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text("Tampa 🐊",
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 20,
                fontFamily: "Gelion_Medium")),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text("Favourite place",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontFamily: "Gelion_Regular")),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text("Marakesh 🇲🇦",
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 20,
                fontFamily: "Gelion_Medium")),
      ],
    );
  }

  Widget passionatePart(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 1,
          width: size.width,
          color: const Color.fromARGB(30, 0, 0, 0),
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Text("I’m passionate about…",
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 20,
                fontFamily: "Gelion_Medium")),
        SizedBox(
          height: size.height * 0.04,
        ),
        Wrap(
          spacing: 6,
          direction: Axis.horizontal,
          children: choiceChips(),
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Container(
          height: 1,
          width: size.width,
          color: const Color.fromARGB(30, 0, 0, 0),
        ),
      ],
    );
  }

  Widget socialItem({required String image, required String socialText}) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 50,
          width: 50,
        ),
        SizedBox(
          width: 10,
        ),
        Text(socialText,
            style: TextStyle(
                color: AppColors.allTextColor,
                fontSize: 20,
                fontFamily: "Gelion_Regular")),
      ],
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _choiceChipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(right: 5, bottom: 10),
        child: ChoiceChip(
          label: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
            child: Text(_choiceChipsList[i]),
          ),
          labelStyle: const TextStyle(
              color: Color(0xff10121E),
              fontSize: 18,
              fontFamily: "Gelion_Regular"),
          backgroundColor: AppColors.btnColor,
          selected: _selectedIndex == i,
          selectedColor: Colors.black,
          onSelected: (bool value) {
            setState(() {
              _selectedIndex = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
