import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/offer/list/model/offer_model.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../controllers/offer_fb_list_controller.dart';

class OfferFbListView extends GetView<OfferFbListController> {
  OfferFbListController controller = Get.put(OfferFbListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Get.toNamed(Routes.OFFER_FB_ADD);
                      },
                      icon: Icon(FontAwesomeIcons.plus),
                      label: Text('عرض جديد'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.utensils),
                      label: Text('عروض مختارة'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Obx(() {
                return ListTile(
                  title: Text(controller.ListCount.value.toString()),
                  leading: Text('إجمالي العروض'),
                );
              }),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffECECEC),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.search),
                              hintText: 'بحث'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('بحث'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Obx(
            () {
              return FutureBuilder(
                future: controller.listOffer.value,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<OffersModel> offersModel = snapshot.data;

                    if (offersModel.length == 0) {
                      return Center(child: Text('لا يوجد عروض مقدمة'));
                    } else {
                      return ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(
                          offersModel.length,
                          (index) => OfferCard(
                            OffersItem: offersModel.elementAt(index),
                          ),
                        ),
                      );
                    }
                  }

                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: KprimaryColor,
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  Widget OfferCard({@required OffersModel OffersItem}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
          onTap: () {
            Get.toNamed(Routes.OFFER_FB_DETAIL, arguments: [OffersItem]);
          },
          child: Card(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'أسم العرض',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                OffersItem.name,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'السعر للشخص',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              OffersItem.price
                                  .toString()
                                  .replaceAll('.0', ''),
                            ),
                            Expanded(
                              child: Text(
                                'رس',
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'الحــالة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                OfferStatus.values[OffersItem.status]
                                    .toString(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 1,
                  child: Image(
                    image: CachedNetworkImageProvider(
                        '${baes_url.toString()}Files/Offer/${OffersItem.image}'),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
