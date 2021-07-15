import 'package:flutter/material.dart';

import '../../util/extension/extension.dart';
import '../../util/r.dart';
import 'action_button.dart';

Future<T?> showMixinBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
}) =>
    showModalBottomSheet(
      context: context,
      builder: (context) => DecoratedBox(
        decoration: BoxDecoration(
          color: context.theme.background,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
        ),
        child: builder(context),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
    );

class MixinBottomSheetTitle extends StatelessWidget {
  const MixinBottomSheetTitle({
    Key? key,
    required this.title,
    this.action = const _BottomSheetCloseButton(),
  }) : super(key: key);

  final Widget title;
  final Widget action;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            DefaultTextStyle(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: context.theme.text,
                ),
                child: title),
            const Spacer(),
            action,
            const SizedBox(width: 12),
          ],
        ),
      );
}

class _BottomSheetCloseButton extends StatelessWidget {
  const _BottomSheetCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ActionButton(
        name: R.resourcesIcCircleCloseSvg,
        size: 26,
        onTap: () {
          Navigator.pop(context);
        },
      );
}