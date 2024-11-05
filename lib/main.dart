import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Portfolio',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: [
            Icon(
              Icons.shopping_bag,
              color: Colors.orange,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications,
              color: Colors.orange,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Project",
              ),
              Tab(
                text: "Saved",
              ),
              Tab(
                text: "Shared",
              ),
              Tab(
                text: "Achievment",
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                  Text("Home")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.business_center,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Text(
                    "Portfolio",
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.file_copy_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                  Text("Input")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                  Text("Profile")
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    clm(),
                    clm(),
                    clm(),
                    clm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column clm() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.orange,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InstructionPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 92,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/img/1.jpg'))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Container(
                                  width: 140,
                                  child: Text(
                                    'Kemampuan Merangkum Tulisan',
                                    maxLines: 2,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('BAHASA SUNDA'),
                                      Text(
                                        'Oleh Al-Baiqi Samaan',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      decoration:
                                          BoxDecoration(color: Colors.amber),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 4),
                                        child: Text(
                                          'A',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Instruction:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Create the page provided in design use flutter_screen_utils package for Responsive fonts and spacing use the colors provided in the design for fonts and other things 4.make the app look as close to the design as possible the portfolio page should be scrollable the Filter button is just for appearance, it doesnt have to work use static data for the cards the bottom nav bar should also match the Figma design whenever we click on icon in button nav bar that icon and label should change their color to orange like color in Figma design, and the indicator should move above that icon the tabs: home,input and profile should contain empty scaffold '
                'or container the tabs ‘saved’,’shared’ and ‘Achievement’ should contain empty containers take all the svg icons from the figma design writing in search bar should filter the card shown based on their title text dont use google fonts, use the fonts by downloading them in assets folder',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Make sure to write clean and readable code that will be one of the factors to judge your submission. The accuracy of the app design to the Figma design will also be considered. host the code on github and Share repo link and the apk file with us',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
