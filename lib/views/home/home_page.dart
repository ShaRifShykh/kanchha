import 'package:flutter/material.dart';
import 'package:kanchha/application/models/user.dart';
import 'package:kanchha/application/services/auth_service.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/home/home_helper.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  getUserData() async {
    await Provider.of<AuthService>(context, listen: false).getUser();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: ConstantColors.whiteColor,
      drawer: Drawer(
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Provider.of<HomeHelper>(context, listen: false).drawerHeader(
                    context,
                    Provider.of<AuthService>(context, listen: false)
                        .user
                        .phoneNumber,
                  ),
                  Provider.of<HomeHelper>(context, listen: false).drawerTile(
                    Path.account2,
                    "My Account",
                    () {
                      Navigator.pushNamed(context, accountRoute);
                    },
                  ),
                  Provider.of<HomeHelper>(context, listen: false).drawerTile(
                    Path.booking,
                    "My Bookings",
                    () {
                      Navigator.pushNamed(context, bookingsRoute);
                    },
                  ),
                  Provider.of<HomeHelper>(context, listen: false).drawerTile(
                    Path.aboutUs,
                    "About Us",
                    () {
                      Navigator.pushNamed(context, aboutRoute);
                    },
                  ),
                  Provider.of<HomeHelper>(context, listen: false).drawerTile(
                    Path.pp,
                    "Privacy Policy",
                    () {
                      Navigator.pushNamed(context, ppRoute);
                    },
                  ),
                  Provider.of<HomeHelper>(context, listen: false).drawerTile(
                    Path.tac,
                    "Terms And Conditions",
                    () {
                      Navigator.pushNamed(context, tacRoute);
                    },
                  ),
                  Provider.of<HomeHelper>(context, listen: false).drawerTile(
                    Path.help,
                    "Help",
                    () {
                      Navigator.pushNamed(context, helpRoute);
                    },
                  ),
                  const SizedBox(height: 50.0),
                  GestureDetector(
                    onTap: () {},
                    child: Provider.of<HomeHelper>(context, listen: false)
                        .drawerFooter(() {
                      Provider.of<AuthService>(context, listen: false)
                          .logout(context);
                    }),
                  )
                ],
              ),
      ),
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            _drawerKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: ConstantColors.black,
            size: 26,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: ConstantColors.black,
              size: 26,
            ),
          )
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Provider.of<HomeHelper>(context, listen: false).head(
                    context,
                    Provider.of<AuthService>(context, listen: false)
                        .user
                        .fullName,
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: ConstantColors.black,
                        ),
                        border: InputBorder.none,
                        hintText: "Search Services",
                      ),
                    ),
                  ),
                  Provider.of<HomeHelper>(context, listen: false)
                      .section(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Provider.of<HomeHelper>(context, listen: false)
                            .serviceTitle(
                          () {
                            Navigator.pushNamed(context, servicesRoute);
                          },
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Provider.of<HomeHelper>(context, listen: false)
                                .service(
                              context,
                              () {
                                Navigator.pushNamed(
                                    context, singleServiceRoute);
                              },
                              Path.yellowCard,
                              "Plumber",
                              Path.yellowMan,
                            ),
                            Provider.of<HomeHelper>(context, listen: false)
                                .service(
                              context,
                              () {
                                Navigator.pushNamed(
                                    context, singleServiceRoute);
                              },
                              Path.skyBlueCard,
                              "Electricians",
                              Path.skyBlueMan,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Provider.of<HomeHelper>(context, listen: false)
                                .service(
                              context,
                              () {
                                Navigator.pushNamed(
                                    context, singleServiceRoute);
                              },
                              Path.lightGreenCard,
                              "Painters",
                              Path.lightGreenMan,
                            ),
                            Provider.of<HomeHelper>(context, listen: false)
                                .service(
                              context,
                              () {
                                Navigator.pushNamed(
                                    context, singleServiceRoute);
                              },
                              Path.peachCard,
                              "Steel Fabricators",
                              Path.peachMan,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Provider.of<HomeHelper>(context, listen: false)
                            .offers(context),
                        const SizedBox(height: 50),
                        Provider.of<HomeHelper>(context, listen: false)
                            .elme(context),
                        const SizedBox(height: 30),
                        Provider.of<HomeHelper>(context, listen: false)
                            .iconWithText(
                          Path.h1,
                          "Hassle-Free Booking Of Services Through Our Application",
                        ),
                        const SizedBox(height: 15),
                        Provider.of<HomeHelper>(context, listen: false)
                            .iconWithText(
                          Path.h2,
                          "Trained and Experienced Professionals vetted By Kanchha",
                        ),
                        const SizedBox(height: 15),
                        Provider.of<HomeHelper>(context, listen: false)
                            .iconWithText(
                          Path.h3,
                          "Vaccinated Professionals Following All Hygiene And Covid Guidelines",
                        ),
                        const SizedBox(height: 15),
                        Provider.of<HomeHelper>(context, listen: false)
                            .iconWithText(
                          Path.h4,
                          "Guaranteed Quality With Instant Dispute Resolution",
                        ),
                        const SizedBox(height: 45),
                      ],
                    ),
                  ),
                  Provider.of<HomeHelper>(context, listen: false)
                      .footer(context),
                ],
              ),
            ),
    );
  }
}
