import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailSummary extends StatelessWidget {
  ItemDetailSummary({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      height: width>=400 ? height * 0.60 : height* 0.686,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white),
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                item.name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "${item.price.toStringAsFixed(2)} ",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
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
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "~ ${item.weight.round()} ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "gr / ${item.unit}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          letterSpacing: 0,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                item.countryOfOrigin,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22.sp,
                    ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    item.description,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        Assets.images.heart,
                        width: 20.w,
                        height: 20,
                        alignment: Alignment.center,
                      ),
                      label: const Text(""),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(width * 0.22, 50),
                        alignment: Alignment.center,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        side: BorderSide(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.2),
                          width: 2,
                        ),
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.only(left: 5.w),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        Assets.images.shoppingCart,
                      ),
                      label: const Text(
                        "ADD TO CART",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        padding: EdgeInsets.only(right: 20.w, left: 5.w),
                        fixedSize: Size(width * 0.63, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
