import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/offer_fb_detail_controller.dart';

class OfferFbDetailView extends GetView<OfferFbDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KsecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تفـاصيل العـرض',
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
              
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'حـالة',
                        style: TextStyle(
                          color: KprimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'فعـال',
                          style: TextStyle(
                            color: Colors.black,
                            
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
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
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
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
                  },
                  child: Text(
                    'تعديل العـرض',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.OFFER_FB_REQUEST_HISTORY);
                  },
                  child: Text('عروض سابقة'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
