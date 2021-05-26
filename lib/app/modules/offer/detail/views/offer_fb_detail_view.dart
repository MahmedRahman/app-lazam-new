import 'package:app_lazam/app/data/ImagePicker.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/offer_fb_detail_controller.dart';

class OfferFbDetailView extends GetView<OfferFbDetailController> {
  OfferFbDetailController controller = Get.put(OfferFbDetailController());
  final _formKey = GlobalKey<FormState>();
  var imagepath = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KsecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Form(
            key: _formKey,
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
                InkWell(
                  onTap: () {
                    PickYouImage pickYouImage = new PickYouImage();
                    pickYouImage.getImage(source: ImageSource.gallery).then(
                      (value) {
                        if (GetUtils.isNullOrBlank(value)) {
                        } else {
                          imagepath.value = pickYouImage.selectImagePath;
                          controller.offersModel.image = value;
                        }

                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GetUtils.isNullOrBlank(controller.offersModel.image)
                        ? Column(
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
                          )
                        : Image(
                            image: CachedNetworkImageProvider(
                              '${baes_url.toString()}Files/Offer/${controller.offersModel.image}',
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: controller.offersModel.name.toString(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'اسم العرض',
                    labelText: 'اسم العرض',
                  ),
                  onSaved: (String v) => controller.offersModel.name = v,
                  validator: (String v) =>
                      v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  initialValue: controller.offersModel.price.toString(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'السعر للشخص الواحد',
                    labelText: 'السعر للشخص الواحد',
                    suffix: Text('ريال'),
                  ),
                  onSaved: (String v) =>
                      controller.offersModel.price = double.parse(v),
                  validator: (String v) =>
                      v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: controller.offersModel.description,
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'الوصـف',
                    labelText: 'الوصـف',
                  ),
                  onSaved: (String v) => controller.offersModel.description = v,
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
                        _formKey.currentState.save();

                        controller.editOffer();
                      }
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
                      Get.toNamed(Routes.OFFER_FB_REQUEST_HISTORY,
                          arguments: [controller.offersModel.id]);
                    },
                    child: Text('عروض مختارة سابقة'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
