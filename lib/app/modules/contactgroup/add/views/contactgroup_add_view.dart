import 'package:app_lazam/app/data/component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/contactgroup_add_controller.dart';

class ContactgroupAddView extends GetView<ContactgroupAddController> {
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
                      'إنشاء قوائم الاتصال',
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
       
            
                TextFormField(
                  keyboardType: TextInputType.text,
                
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'جهة اتصـال',
                    labelText: 'جهة اتصـال',
                  ),
                  validator: (String v) =>
                      v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
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
