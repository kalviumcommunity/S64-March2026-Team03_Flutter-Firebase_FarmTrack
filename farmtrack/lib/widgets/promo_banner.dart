import 'package:flutter/material.dart';
import 'dart:async';
import '../utils/constants.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({Key? key}) : super(key: key);

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startMarquee();
    });
  }

  void _startMarquee() {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (_scrollController.hasClients) {
        final maxScroll = _scrollController.position.maxScrollExtent;
        final currentScroll = _scrollController.position.pixels;
        if (currentScroll >= maxScroll) {
          // Jump back instantly to create a seamless loop
          _scrollController.jumpTo(0);
        } else {
          _scrollController.jumpTo(currentScroll + 2); // Move 2 pixels per frame
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.alertRed,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(), // Prevent manual scrolling
        child: const Row(
          children: [
            SizedBox(width: 16),
            Text(
              "One Stop Shop For All Your Needs!!",
              style: AppTextStyles.bannerText,
            ),
            SizedBox(width: 80), // Gap before repeat
            Text(
              "One Stop Shop For All Your Needs!!",
              style: AppTextStyles.bannerText,
            ),
            SizedBox(width: 80),
            Text(
              "One Stop Shop For All Your Needs!!",
              style: AppTextStyles.bannerText,
            ),
            SizedBox(width: 80),
            Text(
              "One Stop Shop For All Your Needs!!",
              style: AppTextStyles.bannerText,
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
