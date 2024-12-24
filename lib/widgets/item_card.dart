import 'package:delivery_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item, required this.onSelectItem});
  final Item item;
  final Function(Item item) onSelectItem;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        onSelectItem(item);
      },
      child: Container(
        padding: EdgeInsets.only(
            left: width >= 400 ? 18.w : 10.w, right: 0.w, bottom: 20.w),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ItemImage(imagePath: item.image!),
            SizedBox(width: 8.w),
            _ItemDetails(item: item),
          ],
        ),
      ),
    );
  }
}

class _ItemImage extends StatelessWidget {
  const _ItemImage({required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: 177.w,
        height: 128.h,
      ),
    );
  }
}

class _ItemDetails extends StatelessWidget {
  const _ItemDetails({required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: width >= 400 ? 10.w : 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ItemName(name: item.name),
            _ItemPrice(price: item.price, unit: item.unit),
            SizedBox(height: 12.w),
            _ItemActions(),
          ],
        ),
      ),
    );
  }
}

class _ItemName extends StatelessWidget {
  const _ItemName({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
    );
  }
}

class _ItemPrice extends StatelessWidget {
  const _ItemPrice({required this.price, required this.unit});
  final double price;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${price.toStringAsFixed(2)} ",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.w,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            "€ / $unit",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  letterSpacing: 0,
                ),
          ),
        ],
      ),
    );
  }
}

class _ItemActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _OutlinedButton(icon: Assets.images.heart),
          SizedBox(width: 10.w),
          _FilledButton(icon: Assets.images.shoppingCart),
        ],
      ),
    );
  }
}

class _OutlinedButton extends StatelessWidget {
  const _OutlinedButton({required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        icon,
        width: 20.w,
        height: 20,
        alignment: Alignment.center,
      ),
      label: const Text(""),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(78.w, 40),
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        side: BorderSide(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          width: 2.w,
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.only(left: 5.w),
      ),
    );
  }
}

class _FilledButton extends StatelessWidget {
  const _FilledButton({required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(icon),
      label: const Text(""),
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        padding: EdgeInsets.only(left: 5.w),
        fixedSize: Size(78.w, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
      ),
    );
  }
}
