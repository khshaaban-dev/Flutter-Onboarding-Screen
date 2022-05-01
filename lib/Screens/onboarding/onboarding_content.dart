
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String discription;
  const OnboardingContent({
    Key? key,
    required this.image,
    required this.title,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 200,
        ),
        const Spacer(),
        Text(
          title,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w500,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20.0,

        ),
        Text(
          discription,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}