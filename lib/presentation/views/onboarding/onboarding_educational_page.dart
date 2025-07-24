part of '../pages.dart';

class OnboardingEducationalPage extends StatefulWidget {
  const OnboardingEducationalPage({super.key});

  @override
  State<OnboardingEducationalPage> createState() =>
      _OnboardingEducationalPageState();
}

class _OnboardingEducationalPageState extends State<OnboardingEducationalPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'title': 'Our unmatched delicacies.',
      'description':
          'The finest restaurants eagerly await your order, showcasing their top menus just for you!',
      'image': 'assets/images/Eating.svg',
    },
    {
      'title': 'Ordering food in a simple way.',
      'description':
          'Effortlessly placing an uncomplicated food order to enjoy a hassle-free dining experience',
      'image': 'assets/images/Phone.svg',
    },
    {
      'title': 'Get extra daily vouchers.',
      'description':
          'Be a member of Tassty and get more benefits such as extra daily discount!',
      'image': 'assets/images/Megaphone.svg',
    },
  ];

  void _onNext() {
    if (_currentPage < _pages.length - 1) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to the next page or finish onboarding
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  void _onSkip() {
    _pageController.animateToPage(
      _pages.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(_pages[index]['image']!, width: 355),
                        const SizedBox(height: 20),
                        Text(
                          _pages[index]['title']!,
                          style: AppTypography.textTheme.headlineLarge!
                              .copyWith(fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          _pages[index]['description']!,
                          style: AppTypography.textTheme.bodyMedium!.copyWith(
                            color: AppColors.neutral70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _pages.length,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                              ),
                              width: 24,
                              height: 6,
                              decoration: BoxDecoration(
                                color: _currentPage == index
                                    ? AppColors.orange500
                                    : AppColors.orange100,
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.neutral30, width: 1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: (_currentPage == _pages.length - 1)
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _onNext,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.orange500,
                              foregroundColor: AppColors.neutral10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(99),
                              ),
                              minimumSize: const Size.fromHeight(48),
                            ),
                            child: const Text('Get Started'),
                          ),
                        ),
                      )
                    : Row(
                        children: [
                          TextButton(
                            onPressed: _onSkip,
                            child: Text(
                              'Skip',
                              style: AppTypography.textTheme.bodyMedium!
                                  .copyWith(color: AppColors.neutral70),
                            ),
                          ),
                          const Spacer(),
                          TextButton.icon(
                            iconAlignment: IconAlignment.end,
                            onPressed: _onNext,
                            label: Text(
                              'Next',
                              style: AppTypography.textTheme.bodyMedium!
                                  .copyWith(
                                    color: AppColors.neutral100,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/ico_arrow_right_orange.svg',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
