import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final PageController _pageController = PageController(initialPage: 0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            makePage(
                'assets/images/bg_1.png',
                'White Tan Elegant Minimal Fashion',
                'Positive Quote T-Shirt What material is this item made of? Expand or collapse section. 100% combed ringspun cotton. The perfect fabric for a graphic tee and the softest in the business. (Due to product availability, cotton type may vary for 2XL and 3XL sizes). What USA ship methods are available? Expand or collapse section.',
                '1'),
            makePage(
                'assets/images/bg_2.png',
                'Light Brown Modern Aesthetic',
                'Unleash your creativity with our Light Brown Modern Aesthetic Photo Collages Template. Its the perfect design to promote your brand, showcase your products, or simply share beautiful memories. This template offers a delicate blend of modern styles and a light brown aesthetic that instantly catches the eye.',
                '2'),
          ],
        ),
      ),
    );
  }

  Widget makePage(image, title, description, page) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      page.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      '/4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 250),
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              height: 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 500),
                            child: Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 520),
                            child: Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 540),
                            child: Container(
                              margin: EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 560),
                            child: Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                          ),
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 580),
                            child: Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: const Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),
                          ),
                          const DelayedDisplay(
                            delay: Duration(milliseconds: 600),
                            child: Text(
                              '4.0',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          const DelayedDisplay(
                            delay: Duration(milliseconds: 610),
                            child: Text(
                              '(1483)',
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 750),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            description,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                height: 1.9,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const DelayedDisplay(
                        delay: Duration(milliseconds: 950),
                        child: Text(
                          'READ MORE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
