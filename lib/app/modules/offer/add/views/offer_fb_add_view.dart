import 'dart:io';

import 'package:app_lazam/app/data/ImagePicker.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/offer_fb_add_controller.dart';

class OfferFbAddView extends GetView<OfferFbAddController> {
  final _formKey = GlobalKey<FormState>();
  var imagepath = ''.obs;
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
                    'إنشــاء عـرض جـديد',
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
              Obx(() {
                return InkWell(
                  onTap: () {
                    PickYouImage pickYouImage = new PickYouImage();
                    pickYouImage.getImage(source: ImageSource.gallery).then(
                      (value) {
                        if (GetUtils.isNullOrBlank(value)) {
                        } else {
                          imagepath.value = pickYouImage.selectImagePath;
                          controller.imageBytes = value;
                        }

                        // onclick(value);
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        imagepath.value.isEmpty
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        KprimaryColor.withOpacity(.6),
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
                                    'يمكنك إضافة صورة للعرض',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              )
                            : Image(
                                image: FileImage(
                                  File(imagepath.value),
                                ),
                              )
                      ],
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: controller.offerName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'اسم العرض',
                  labelText: 'اسم العرض',
                ),
                validator: (String v) =>
                    v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: controller.offerPrice,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'السعر للشخص الواحد',
                    labelText: 'السعر للشخص الواحد',
                    suffix: Text('ريال')),
                validator: (String v) =>
                    v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.offerDescription,
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'الوصـف',
                  labelText: 'الوصـف',
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
                        controller.addOffer();
                      }
                    },
                    child: Text(
                      'إنشــاء العـرض',
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
