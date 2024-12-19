import 'package:delivery_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item_card extends StatelessWidget {
  const Item_card({super.key, required this.item, required this.onSelectItem});
  final Item item;
  final Function(Item item) onSelectItem;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectItem(item);
      },
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.r))),
                child: Image.asset(
                 item.image!,
                  fit: BoxFit.cover,
                  width: 177.w,
                  height: 128,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.w, left: 5.w),
                  child: Text(
                    item.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "${item.price.toStringAsFixed(2)} ",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.w),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "€ / ${item.unit}",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            letterSpacing: 0,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                         Assets.images.heart, 
                          width: 20.w,
                          height: 20, 
                          alignment: Alignment
                              .center, 
                        ),
                        label: const Text(""),
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(
                              78.w, 40), 
                          alignment: Alignment
                              .center, 
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                          ),

                          side: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.2),
                            width: 2.w,
                          ),

                          backgroundColor: Colors.transparent,
                          padding: const EdgeInsets.only(
                              left:
                                  5), 
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          Assets.images.shoppingCart,
                        ),
                        label: const Text(
                            ""),
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primary,
                          padding: EdgeInsets.only(
                              left: 5
                                  .w),
                          fixedSize: Size(78.w,
                              40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10
                                .r)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
