import 'package:flutter/material.dart';
import 'package:onboarding_screen/Screens/home/home_screen.dart';

import 'package:onboarding_screen/Screens/onboarding/onboard_model.dart';
import 'package:onboarding_screen/Screens/onboarding/onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController;
  int _dotIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    onPageChanged: (pageIndex) {
                      setState(() {
                        _dotIndex = pageIndex;
                      });
                    },
                    controller: pageController,
                    itemCount: Onboard.demoContent.length,
                    itemBuilder: (context, index) {
                      final onboard = Onboard.demoContent[index];
                      return OnboardingContent(
                        image: onboard.image,
                        title: onboard.title,
                        discription: onboard.discription,
                      );
                    }),
              ),
              Row(children: [
                ...List.generate(
                  Onboard.demoContent.length,
                  (index) => DotIndecator(
                    index: index,
                    pageController: pageController,
                    isActive: _dotIndex == index,
                  ),
                ),
                const Spacer(),
                SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: _dotIndex != Onboard.demoContent.length - 1
                          ? const Icon(Icons.arrow_right_alt_rounded)
                          : const FittedBox(child: Text('Start')),
                      onPressed: () {
                        if (_dotIndex != Onboard.demoContent.length - 1) {
                          pageController.nextPage(
                            duration: const Duration(
                              milliseconds: 400,
                            ),
                            curve: Curves.ease,
                          );
                        } else {
                          // here navigate to the first screen or any thing you want.
                         Navigator.pushReplacementNamed(context, HomeScreen.route);
                        }
                      },
                    )),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndecator extends StatelessWidget {
  final int index;
  final PageController pageController;
  final bool isActive;
  const DotIndecator({
    required this.index,
    required this.pageController,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.jumpToPage(index);
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: isActive ? 12.0 : 4,
          width: 4,
          decoration: BoxDecoration(
            color: isActive ? Theme.of(context).primaryColor : Colors.grey,
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
        ),
      ),
    );
  }
}
