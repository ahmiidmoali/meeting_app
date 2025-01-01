import 'package:flutter/material.dart';
import 'package:meeting_app/features/app/const/app_images_const.dart';
import 'package:meeting_app/features/app/theme/style.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({super.key});

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.bottomCenter,
                color: AppColors.backgroundColor,
                height: 80,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _MeetingDisc(
                      title: "meeting code",
                      subTitle: "sqw7dsa4w7",
                    ),
                    _MeetingDisc(
                      title: "meeting Admin",
                      subTitle: "ahmed",
                    ),
                    _MeetingDisc(
                      title: "Guest",
                      subTitle: "ali",
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: AppColors.textColorIn,
                  child: Image.asset(AppImagesConst.profileOther),
                ),
              ),
            ],
          ),
          Positioned(
              left: 0,
              top: 85,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    border: Border.all(color: AppColors.textColorIn),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                height: 150,
                width: 200,
                child: Image.asset(AppImagesConst.profileDefault),
              )),
          Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _MeetingButton(
                    icon: Icons.mic_off_outlined,
                    onPressed: () {},
                    title: "Mic On",
                  ),
                  _MeetingButton(
                    icon: Icons.camera_alt_outlined,
                    onPressed: () {},
                    title: "Camera Off",
                  ),
                  _MeetingButton(
                    icon: Icons.exit_to_app,
                    onPressed: () {},
                    title: "End Meeting",
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class _MeetingButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final IconData? icon;

  const _MeetingButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: onPressed,
          iconSize: 30,
          icon: Icon(
            icon,
            color: AppColors.backgroundColor,
          ),
        ),
        Text(
          title,
          style: const TextStyle(color: AppColors.backgroundColor),
        )
      ],
    );
  }
}

class _MeetingDisc extends StatelessWidget {
  final String title;
  final String subTitle;

  const _MeetingDisc({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 15, color: AppColors.textColorIn),
        )
      ],
    );
  }
}
