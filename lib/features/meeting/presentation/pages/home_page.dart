import 'package:flutter/material.dart';
import 'package:meeting_app/features/app/const/app_images_const.dart';
import 'package:meeting_app/features/app/theme/style.dart';
import 'package:meeting_app/features/meeting/presentation/pages/meeting_page.dart';
import 'package:meeting_app/features/meeting/presentation/widgets/custom_join_create_button.dart';
import 'package:meeting_app/features/meeting/presentation/widgets/custom_swipe_button.dart';
import 'package:meeting_app/features/meeting/presentation/widgets/custom_text_form_field_join_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController joiningCodeController;
  bool joinMeeting = true;
  // String currentCode = "";
  @override
  void initState() {
    joiningCodeController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //choosing what language from seletor
    //for searching about current intersting
    //sending requisting then waitng for notifcation to join a call
    //2th page is for friends هيبقي جنبهم اذا متاحين لجلسة او لا بحيث تطلب انضمام
    return Scaffold(
      body: Container(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Image.asset(
                alignment: Alignment.center,
                AppImagesConst.letstalkImage,
                height: 300,
                width: 300,
              ),
            ),
            //Join Create buttons
            CustomJoinCreateButton(
              onComplete: (isUploading) {
                joinMeeting = isUploading;
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextFormFieldJoinCode(
                hint: "",
                fillColor: AppColors.textColorIn,
                icon: Icons.share,
                isNumber: false,
                lable: "meeting code",
                onPressedIcon: () {},
                myController: joiningCodeController,
              ),
            ),
            CustomSwipeButton(
              onSwipe: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MeetingPage(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
