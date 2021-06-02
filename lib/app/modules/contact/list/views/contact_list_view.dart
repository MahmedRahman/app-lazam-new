import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/contact_list_controller.dart';

class ContactListView extends GetView<ContactListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.plus),
        onPressed: () {
          Get.toNamed(Routes.CONTACT_ADD);
        },
      ),
      body: ListView(
        children: [
          ContactCard(),
          ContactCard(),
          ContactCard(),
          ContactCard(),
          ContactCard(),
          ContactCard(),
          ContactCard(),
          ContactCard(),
        ],
      ),
    );
  }

  Widget ContactCard() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  child: Text(
                    'م',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: KprimaryColor,
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text('محمد عبد الرحمن'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('01002089079'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('atp@gmail.com'),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      );
}
