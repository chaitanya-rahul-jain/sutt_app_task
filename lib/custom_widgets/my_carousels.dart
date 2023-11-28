import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sutt_app_task/launch_url.dart';

class Screen1Carousel extends StatefulWidget {
  const Screen1Carousel({super.key});

  @override
  State<Screen1Carousel> createState() => _Screen1CarouselState();
}

class _Screen1CarouselState extends State<Screen1Carousel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.24),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/screen1/image 1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 41,
                  left: 27,
                  child: Text(
                    'To The Ultimate Guide.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            //2nd Image of Slider
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.24),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/screen1/image 2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 61,
                  left: 37,
                  child: Text(
                    'Experience\nCities.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            //3rd Image of Slider
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.24),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/screen1/image 3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 60,
                  left: 116,
                  child: Text(
                    '  Explore\nCountries.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFF681919),
                    ),
                  ),
                ),
              ],
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 250,
            // enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 700),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}

class Screen3Carousel extends StatefulWidget {
  const Screen3Carousel({super.key});

  @override
  State<Screen3Carousel> createState() => _Screen3CarouselState();
}

class _Screen3CarouselState extends State<Screen3Carousel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/screen3/Screen3 Carousel.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 22,
                      ),
                      Image.asset(
                        'assets/images/screen3/map_photo.png',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/screen3/image 6.png'),
                              const Text(
                                'Latitude',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                '29',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Image.asset(
                                  'assets/images/screen3/Ellipse 1.png'),
                              Positioned(
                                  left: 3,
                                  child: Image.asset(
                                      'assets/images/screen3/Ellipse 2.png')),
                              const Positioned(
                                left: 23,
                                top: 36,
                                child: Column(
                                  children: [
                                    Text(
                                      '4387547',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'population',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/screen3/image 7.png'),
                              const Text(
                                'Ḷongitude',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                '31',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Elevation(m):10',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                              Color(0xFF334351),
                            ),
                          ),
                          onPressed: () {
                            launchWiki(
                                'https://en.wikipedia.org/wiki/New_York_City');
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
                                width: 5,
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
                    ],
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 700,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
