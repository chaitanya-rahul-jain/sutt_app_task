import 'package:flutter/material.dart';
import 'package:sutt_app_task/custom_widgets/my_list_views.dart';
import 'package:go_router/go_router.dart';
import 'package:sutt_app_task/launch_url.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Container(
          height: 230,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/screen2/background 2.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            elevation: 0,
            title: const Text(
              "Country Details",
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
          body: Column(
            children: [
              const Center(
                child: Text(
                  'India',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/screen2/ticketBackground.png',
                  height: 200),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Code',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: const Color(0xFF1E2831).withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'IN',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xFF1E2831),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Capital',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: const Color(0xFF1E2831).withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'New Delhi',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xFF1E2831),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'ISD',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: const Color(0xFF1E2831).withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '+91',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xFF1E2831),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 57,
                width: 233,
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color(0xFF1E2831),
                    ),
                  ),
                  onPressed: () {
                    launchWiki('https://en.wikipedia.org/wiki/India');
                  },
                  child: const Row(
                    children: [
                      Spacer(),
                      Text(
                        'WIKIPEDIA',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_outward,
                        color: Colors.white,
                        size: 20,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'CITIES',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF1E2831),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 60,
                width: 342,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side:
                          const BorderSide(width: 1, color: Color(0xFFCBCBCB))),
                  elevation: 0,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Search Country',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF787878),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        size: 24,
                        Icons.search,
                        color: Color(0xFF02021E),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CitySelector(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
