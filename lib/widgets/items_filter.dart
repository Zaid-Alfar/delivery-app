import 'package:delivery_app/cubit/filter_cubit.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsFilter extends StatelessWidget {
  const ItemsFilter({super.key, required this.availableItems});
  final List<Item> availableItems;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FilterCubit(),
      child: SizedBox(
        height: 34,
        child: BlocBuilder<FilterCubit, Set<int>>(
          builder: (context, selectedIndices) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: availableItems.length,
              itemBuilder: (context, index) {
                final isSelected = selectedIndices.contains(index);
                return Padding(
                  padding:  EdgeInsets.only(left: 2.w),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 100.w),
                    child: TextButton.icon(
                      onPressed: () {
                        context.read<FilterCubit>().toggleIndex(index);
                      },
                      icon: isSelected
                          ? SvgPicture.asset(
                              Assets.images.check,
                              height: 16,
                            )
                          : const SizedBox.shrink(),
                      label: Text(
                        "${availableItems[index].name} (${availableItems[index].stock})",
                        style: TextStyle(
                          color: isSelected
                              ? Theme.of(context).colorScheme.onSecondary
                              : Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: isSelected
                            ? const Color.fromRGBO(226, 203, 255, 1)
                            : Colors.white,
                        alignment: Alignment.center,
                        side: BorderSide(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.2),
                        ),
                        minimumSize: Size(100.w, 34),
                        padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
