import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../util/extension/extension.dart';

import '../brightness_theme_data.dart';

Color _getAvatarColorById(String userId) {
  final hashCode = userId.trim().uuidHashcode();
  return avatarColors[hashCode.abs() % avatarColors.length];
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.size = 32.0,
    this.borderWidth = 2.0,
    required this.avatarUrl,
    required this.userId,
    required this.name,
  }) : super(key: key);

  final double? size;
  final double borderWidth;
  final String? avatarUrl;
  final String userId;
  final String name;

  @override
  Widget build(BuildContext context) {
    final placeholder = _AvatarPlaceholder(
      userId: userId,
      name: name,
    );

    return ClipOval(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(borderWidth),
          child: ClipOval(
            child: Image.network(
              avatarUrl ?? '',
              width: size,
              height: size,
              fit: BoxFit.cover,
              loadingBuilder: (
                BuildContext context,
                Widget child,
                ImageChunkEvent? loadingProgress,
              ) {
                if (loadingProgress == null) return child;
                return placeholder;
              },
              errorBuilder: (_, __, ___) => placeholder,
            ),
          ),
        ),
      ),
    );
  }
}

class _AvatarPlaceholder extends HookWidget {
  const _AvatarPlaceholder({
    Key? key,
    this.size = 32.0,
    this.fontSize = 18,
    required this.userId,
    required this.name,
  }) : super(key: key);

  final double size;
  final double fontSize;
  final String userId;
  final String name;

  @override
  Widget build(BuildContext context) {
    final color = useMemoized(() => _getAvatarColorById(userId), [userId]);
    return SizedBox.fromSize(
      size: Size.square(size),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Text(
            name[0].toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
