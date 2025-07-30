part of '../pages.dart';

class OnboardingSplashscreenPage extends StatefulWidget {
  const OnboardingSplashscreenPage({super.key});

  @override
  State<OnboardingSplashscreenPage> createState() =>
      _OnboardingSplashscreenPageState();
}

class _OnboardingSplashscreenPageState
    extends State<OnboardingSplashscreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        GoRouter.of(context).go('/educational');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xffffcf24), Color(0xfff07c2a)],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Stack(
          children: [
            Center(child: SvgPicture.asset('assets/icons/logo_splash.svg')),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 138.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
