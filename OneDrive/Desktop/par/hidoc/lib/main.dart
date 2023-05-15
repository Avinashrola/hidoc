import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hidoc/services/api_service.dart';

import 'model/hidoc_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'HiDoc',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Hidoc> data = [];

  @override
  void initState() {
    getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height * 0.04,
                    width: Get.width * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade100.withOpacity(0.6),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "hidoc",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.height * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Get.height * 0.05,
                          width: Get.width * 0.11,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: const Icon(Icons.home_outlined),
                        ),
                        Text(
                          "ARTICLES",
                          style: TextStyle(
                            fontSize: Get.height * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                          width: Get.width * 0.11,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: Get.height * 0.07,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: const Offset(0.5, 1),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(),
                              Text("Critical Care"),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * 0.15,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Icon(Icons.newspaper),
                            ),
                            const ListTile(
                              title: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Health Literacy and Clear Bedside Communication: A Curricular Intervention for Internal Medicine Physicians and Medicine Nurses",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              isThreeLine: true,
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Communication has always been considered as the backbone of developing a strong relationship between the patient and the care-giver. In fact, several pieces of evidence suggest that proper communication can help in achieving improved health outcomes for patients",
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            SizedBox(
                              // height: Get.height*0.1,
                              child: ListTile(
                                contentPadding: const EdgeInsets.only(left: 17),
                                title: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "Read full article to earn points",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Get.height * 0.017,
                                      decoration: TextDecoration.underline,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                ),
                                trailing: Container(
                                  height: Get.height * 0.12,
                                  width: Get.width * 0.2,
                                  decoration: const BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(
                                          10,
                                        ),
                                      )),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Points",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text(
                              "Hidoc Bulletin",
                              style: TextStyle(
                                fontSize: Get.height * 0.026,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
// height: Get.height*0.5,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: Get.height * 0.009,
                                          width: Get.width * 0.24,
                                          color: Colors.cyan,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "aaaaaaaaaaaaaaaaaaa}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "aaaaaaaaaaa",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.005,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Read More",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.cyan,
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: Get.height * 0.016,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * 0.53,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: Colors.cyan.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Trending Hidoc Bulletin",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Get.height * 0.027,
                                          ),
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.01,
                                        ),
                                      ],
                                    ),
                                    ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "aaaaaaaaaaaaaaaaaaa}",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.01,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "aaaaaaaaaaa",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.005,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Read More",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.cyan,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        fontSize:
                                                            Get.height * 0.016,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: Get.height * 0.06,
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              "Read More Bulletins",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: Get.height * 0.019,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: Get.height * 0.45,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Latest Articles",
                                    style: TextStyle(
                                      fontSize: Get.height * 0.022,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: Get.height * 0.001,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 7.0),
                                            child: Text(
                                              "shdbjsfdlkjnfjasdf fn jdsknfjadnfjdsn fdsjfnlkdsjfds",
                                              style: TextStyle(),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                        itemCount: 5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: Get.height * 0.45,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Trending Articles",
                                    style: TextStyle(
                                      fontSize: Get.height * 0.022,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: Get.height * 0.001,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 7.0),
                                            child: Text(
                                              "shdbjsfdlkjnfjasdf fn jdsknfjadnfjdsn fdsjfnlkdsjfds",
                                              style: TextStyle(),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                        itemCount: 5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: Get.height * 0.25,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Explore more in Articles",
                                    style: TextStyle(
                                      fontSize: Get.height * 0.022,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: Get.height * 0.001,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 7.0),
                                            child: Text(
                                              "shdbjsfdlkjnfjasdf fn jdsknfjadnfjdsn fdsjfnlkdsjfds",
                                              style: TextStyle(),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                        itemCount: 2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: Get.height * 0.06,
                          // width: Get.width * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              "Explore Hidoc Dr.",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: Get.height * 0.02,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      "What's more on Hidoc Dr.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * 0.024,
                      ),
                    ),
                  ),
                  Container(
                    // height: Get.height*0.7,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            children: [
                              Text(
                                "News",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.height * 0.024,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "sdjfhdjlfh dshfakjjdskfdsssssssssssssssssssssssss dskjldsfdsnfaxidf dhfxunsdfhudshnfhdsjf xhdfudh",
                                  style: TextStyle(
                                    height: 1.7,
                                    fontWeight: FontWeight.w300,
                                    fontSize: Get.height * 0.016,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.15,
                        ),
                        Container(
                          height: Get.height * 0.2,
                          width: Get.width,
                          color: Colors.cyan,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: Get.height * 0.265,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "Explore more in Articles",
                                style: TextStyle(
                                  fontSize: Get.height * 0.022,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: Get.height * 0.001,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.cyan
                                                    .withOpacity(0.2),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Icon(
                                                  Icons.quiz,
                                                  color: Colors.cyan,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.026,
                                            ),
                                            Text(
                                              "Title",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.024,
                                            ),
                                            Flexible(
                                              child: Text(
                                                "shdbjsfdlkjnfjasdf fn jdsknfjadnfjdsn fdsjfnlkdsjfds",
                                                style: TextStyle(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey,
                                        ),
                                    itemCount: 2),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: Get.height * 0.105,
                      width: Get.width,
                      color: Colors.orange.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Social Network for doctors - \nA Special feature on Hidoc Dr.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.height * 0.02,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15,),
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
