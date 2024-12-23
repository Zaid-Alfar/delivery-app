import 'package:delivery_app/cubit/filter_cubit.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
                final isSelected = selectedIndices.contains(index); // Selection state
                return Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: TextButton.icon(
                    onPressed: () {
                      context.read<FilterCubit>().toggleIndex(index);
                    },
                    icon: isSelected
                        ? SvgPicture.asset(
                            "assets/images/check.svg",
                            height: 16,
                          )
                        : const SizedBox.shrink(),
                    label: Text(
                      availableItems[index].name,
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
                        color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                      ),
                      fixedSize: const Size(100, 34),
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
