import 'package:flutter/material.dart';
import 'package:hotel_booking/widget/card_WIdget.dart';

import '../widget/filter_bottom_model_sheete.dart';
import '../widget/icon_widget.dart';
import '../widget/sort_bottom_model_sheet.dart';
import '../widget/text_feild_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isContainerVisible = true;
  final FocusNode _focusNode = FocusNode();



  List Hotel =[];
  Future getData() async {
    var url = "https://www.hotelsgo.co/test/hotels";
    var response = await http.get(
      Uri.parse(url),
    );

    var body = jsonDecode(response.body);
    Hotel.addAll(body);

    print(body);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 8,
                  child: Stack(
                    children: [
                      TextFeildWidget(

                      ),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconWidget(
                              tap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return const FilterBottomModelSheet();
                                  },
                                );
                              },
                              icon: Icons.tune,
                              text: 'Filter',
                            ),
                            IconWidget(
                              tap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return const SortBottomModelSheet();
                                  },
                                );
                              },
                              icon: Icons.sort,
                              text: 'Sort',
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 680,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const CardWidget();
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
