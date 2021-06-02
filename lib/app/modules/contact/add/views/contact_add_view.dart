import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/contact_add_controller.dart';

class ContactAddView extends GetView<ContactAddController> {
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
                    'إنشــاء قائمة اتصال جديدة',
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
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: controller.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'اسم الشخص',
                  labelText: 'اسم الشخص',
                ),
                validator: (String v) =>
                    v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: controller.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'رقم الجوال',
                  labelText: 'رقم الجوال',
                ),
                validator: (String v) =>
                    v.isPhoneNumber ? null : 'مينفعش تسيب هنا فاضى',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
         
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'البريد الالكترونى',
                  labelText: 'البريد الالكترونى',
                ),
                validator: (String v) =>
                    v.isEmail ? null : 'مينفعش تسيب هنا فاضى',
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
                    )),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
