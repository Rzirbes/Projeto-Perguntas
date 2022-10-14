import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final Function onPressed;
  final String label;

  const AdaptativeButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed(),
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(label),
          )
        : ElevatedButton(
            onPressed: () => onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).textTheme.button?.color,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: Text(label),
          );
  }
}
