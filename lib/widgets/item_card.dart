import 'package:flutter/material.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter_svg/svg.dart';

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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Image(
                  image: item.image!,
                  fit: BoxFit.cover,
                  width: 177,
                  height: 128,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    item.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                            fontSize: 22),
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
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/heart.svg', // Replace with your SVG asset path
                          width: 20, // Adjust width as needed
                          height: 20, // Adjust height as needed
                          alignment: Alignment
                              .center, // Center the image within the button
                        ),
                        label: const Text(""),
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(
                              78, 40), // Adjust size to fit the SVG image
                          alignment: Alignment
                              .center, // Ensures the content (icon) is centered
                          // Shape of the button (making it squared)
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
                          padding: const EdgeInsets.only(
                              left:
                                  5), // Remove padding to avoid image being off-center
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/shopping-cart.svg', // Set icon color
                        ),
                        label: const Text(
                            ""), // Empty label to keep it just the icon
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primary, // Button background color
                          padding: EdgeInsets.only(
                              left:
                                  5), // Remove padding to ensure the icon is centered
                          fixedSize: const Size(78,
                              40), // Ensure the button size is fixed (adjust as needed)
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                10)), // Optional: keeps the button squared if you need it
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
