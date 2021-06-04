import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/event_add_controller.dart';

class EventAddView extends GetView<EventAddController> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'إنشاء مناسبة جديدة',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.windowClose),
                      onPressed: () {
                        Get.back();
                      },
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: KprimaryColor.withOpacity(.6),
                      radius: 50,
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'يمكنك إضافة صورة للايفانت',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'اسم المناسبة',
                    labelText: 'اسم المناسبة',
                  ),
                  validator: (String v) =>
                      v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
                ),
                SizedBox(
                  height: 20,
                ),
                defaultDropdown(
                  onChanged: (index) {},
                  validator: (int v) {
                    if (v == null) {
                      return 'برجاء اختيار المدينة المناسبة';
                    } else {
                      return null;
                    }
                  },
                  texthint: 'أختيار الفئة',
                  items: List.generate(
                    userCity.length,
                    (index) => DropdownMenuItem(
                      value: userCity.elementAt(index)['Id'],
                      child: Text('${userCity.elementAt(index)['Name']}'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'التـاريخ',
                    labelText: 'التـاريخ',
                  ),
                  validator: (String v) =>
                      v.isPhoneNumber ? null : 'مينفعش تسيب هنا فاضى',
                ),
                SizedBox(
                  height: 20,
                ),
                defaultDropdown(
                  onChanged: (index) {},
                  validator: (int v) {
                    if (v == null) {
                      return 'برجاء اختيار المدينة المناسبة';
                    } else {
                      return null;
                    }
                  },
                  texthint: 'أختيار قائمة الاتصال',
                  items: List.generate(
                    userCity.length,
                    (index) => DropdownMenuItem(
                      value: userCity.elementAt(index)['Id'],
                      child: Text('${userCity.elementAt(index)['Name']}'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();

                      if (_formKey.currentState.validate()) {
                        //controller.addOffer();
                      }
                    },
                    child: Text(
                      'إنشــاء ',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
