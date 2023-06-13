import 'package:flutter/material.dart';
import 'package:onboarding/presentation/permissions/permissions_page.dart';
import 'package:onboarding/presentation/thank_you/thank_you_page.dart';
import 'package:onboarding/presentation/welcome/welcome_page.dart';

class OnBoardingPage extends StatefulWidget {
  final VoidCallback onFinished;

  const OnBoardingPage({super.key, required this.onFinished});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  int _activepage = 0;

  Widget _getOnBoardingPage(int index) {
    switch (index) {
      case 0:
        return WelcomePage(
          onContinueClicked: _moveToTheNextPage,
        );
      case 1:
        return PermissionsPage(
          onContinueClicked: _moveToTheNextPage,
        );
      default:
        return ThankYouPage(onContinueClicked: widget.onFinished);
    }
  }

  void _moveToTheNextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _activepage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                itemCount: 3,
                controller: _controller,
                onPageChanged: _onPageChanged,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => _getOnBoardingPage(index),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  3,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 4),
                    duration: const Duration(milliseconds: 300),
                    width: _activepage == index ? 32 : 16,
                    height: 6,
                    decoration: BoxDecoration(
                        color: _activepage == index ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
