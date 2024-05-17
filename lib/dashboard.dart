//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  var height, width;
  List imgData = [
    "images/mcqs.png",
    "images/quiz.png",
    "images/pastpapers.png",
    "images/pdf.png",
    "images/job.png",
    "images/about.png",
  ];

  List titles = [
    "MCQS",
    "Quiz",
    "Papers",
    "PDF",
    "Job",
    "About",
  ];

  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: const Color.fromARGB(255, 127, 124, 202),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  height: height * 0.25,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 12,
                          right: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Container(
                              child: ClipRRect(
                                child: Image.asset(
                                  "images/woman1.png",
                                  height: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 15,
                          right: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0,
                              ),
                            ),
                            // SizedBox(
                            //   height: 0,
                            // ),
                            Text(
                              "Last Update 21 July 2024",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white38,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  height: height * 0.75,
                  width: width,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imgData[index],
                                width: 100,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
