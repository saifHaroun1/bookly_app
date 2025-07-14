import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo_bookly),
        SizedBox(height: 10),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: Text("reed free books", style: TextStyle(fontSize: 20)),
            );
          },
        ),
      ],
    );
  }

  void navigateToHomeView() {
    Future.delayed(Duration(seconds: 4), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fadeIn,
        duration: KtransationDuration,
      );
    });
  }

  void initSlidingAnimation() {
    super.initState();
    animationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero).animate(
          CurvedAnimation(
            parent: animationcontroller,
            curve: Curves.fastOutSlowIn,
          ),
        );

    animationcontroller.forward();
  }
}
