import 'package:flutter/material.dart';
import 'package:sutt_app_task/custom_widgets/my_carousels.dart';
import 'package:go_router/go_router.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Container(
          height: 164,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/screen3/background 1.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "City Details",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            leading: IconButton(
              iconSize: 24,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
          body: const Column(
            children: [
              Center(
                child: Text(
                  'New York',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Screen3Carousel(),
            ],
          ),
        ),
      ],
    );
  }
}
