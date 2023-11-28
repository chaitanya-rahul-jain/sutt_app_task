import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CountrySelector extends StatefulWidget {
  const CountrySelector({super.key});

  @override
  State<CountrySelector> createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  void goToScreen2() {
    setState(
      () {
        GoRouter.of(context).push('/country');
      },
    );
  }

  final List<List> countries = [
    ['AF', 'Afghanistan', Icons.star_border_rounded],
    ['AL', 'Albania', Icons.star_border_rounded],
    ['DZ', 'Algeria', Icons.star_border_rounded],
    ['AD', 'Andorra', Icons.star_border_rounded],
    ['AO', 'Angola', Icons.star_border_rounded]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 45,
                child: GestureDetector(
                  onTap: goToScreen2,
                  child: Card(
                    elevation: 0,
                    child: Row(children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        countries[index][0],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Text(
                        countries[index][1],
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF031730)),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          if (countries[index][2] ==
                              Icons.star_border_rounded) {
                            setState(() {
                              countries[index][2] = Icons.star_rounded;
                            });
                          } else {
                            setState(() {
                              countries[index][2] = Icons.star_border_rounded;
                            });
                          }
                        },
                        icon: Icon(
                          countries[index][2],
                          color: const Color(0xFF376CD6),
                          size: 26,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Color.fromRGBO(3, 23, 48, 0.2),
                        size: 36,
                        weight: 1,
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CountryBookmark extends StatefulWidget {
  const CountryBookmark({super.key});

  @override
  State<CountryBookmark> createState() => _CountryBookmarkState();
}

class _CountryBookmarkState extends State<CountryBookmark> {
  void goToHome() {
    setState(
      () {
        GoRouter.of(context).push('/home');
      },
    );
  }

  void deleteCountry() {
    
  }

  final List<List> countries = [
    ['AF', 'Afghanistan', Icons.star_border_rounded],
    ['AL', 'Albania', Icons.star_border_rounded],
    ['DZ', 'Algeria', Icons.star_border_rounded],
    ['AD', 'Andorra', Icons.star_border_rounded],
    ['AO', 'Angola', Icons.star_border_rounded]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 45,
                child: Card(
                  elevation: 0,
                  child: Row(children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      countries[index][0],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Text(
                      countries[index][1],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF031730)),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black54,
                        size: 26,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CitySelector extends StatefulWidget {
  const CitySelector({super.key});

  @override
  State<CitySelector> createState() => _CitySelectorState();
}

class _CitySelectorState extends State<CitySelector> {
  void goToScreen3() {
    setState(
      () {
        GoRouter.of(context).push('/city');
      },
    );
  }

  final List<List> countries = [
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 45,
                child: GestureDetector(
                  onTap: goToScreen3,
                  child: Card(
                    elevation: 0,
                    child: Row(children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            countries[index][0],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF031730),
                            ),
                          ),
                          Text(
                            countries[index][1],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(3, 23, 48, 0.6)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          if (countries[index][2] ==
                              Icons.star_border_rounded) {
                            setState(() {
                              countries[index][2] = Icons.star_rounded;
                            });
                          } else {
                            setState(() {
                              countries[index][2] = Icons.star_border_rounded;
                            });
                          }
                        },
                        icon: Icon(
                          countries[index][2],
                          color: const Color(0xFFC1C510),
                          size: 26,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        size: 36,
                        weight: 1,
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CityBookmark extends StatefulWidget {
  const CityBookmark({super.key});

  @override
  State<CityBookmark> createState() => _CityBookmarkState();
}

class _CityBookmarkState extends State<CityBookmark> {
  void goToScreen3() {
    setState(
      () {
        GoRouter.of(context).push('/city');
      },
    );
  }

  final List<List> countries = [
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded],
    ['Mumbai', 'Maharashtra', Icons.star_border_rounded]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 45,
                child: GestureDetector(
                  onTap: goToScreen3,
                  child: Card(
                    elevation: 0,
                    child: Row(children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            countries[index][0],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF031730),
                            ),
                          ),
                          Text(
                            countries[index][1],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(3, 23, 48, 0.6)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          if (countries[index][2] ==
                              Icons.star_border_rounded) {
                            setState(() {
                              countries[index][2] = Icons.star_rounded;
                            });
                          } else {
                            setState(() {
                              countries[index][2] = Icons.star_border_rounded;
                            });
                          }
                        },
                        icon: Icon(
                          countries[index][2],
                          color: const Color(0xFFC1C510),
                          size: 26,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        size: 36,
                        weight: 1,
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
