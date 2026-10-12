import 'package:auto_route/auto_route.dart';
import 'package:breeze_app/src/core/theme/recources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Breeze')),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 190,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('breeze', style: AppTextStyles.fs18w700),
                        SizedBox(height: 10),
                        Text(
                          'Your day in the clear',
                          style: AppTextStyles.fs14w400,
                        ),
                      ],
                    ),
                    Text(
                      'A little closer to your forecast',
                      style: AppTextStyles.fs14w400,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    // SvgPicture.asset(Assets)
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
