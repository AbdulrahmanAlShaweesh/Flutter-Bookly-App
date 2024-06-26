import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

// we need to use single ticker provider state mixin
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // the animation controler generat a value between 0-1
  // we need to use a widget at the animationcontroller and take the
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    intSliddingAnimation();
    navigatToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 60,
        ),
        const SizedBox(
          height: 30.0,
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) => SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void intSliddingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 12), end: Offset.zero)
            .animate(animationController);

    slidingAnimation.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  // naviattion... //
  void navigatToHomeView() {
    Future.delayed(const Duration(seconds: 6), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
