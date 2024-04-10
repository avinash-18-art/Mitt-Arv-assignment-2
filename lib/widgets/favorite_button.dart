import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final bool isFavorite;
  final Function(bool) onPressed;

  FavoriteButton({required this.isFavorite, required this.onPressed});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: widget.isFavorite ? Colors.red : null,
      ),
      onPressed: () {
        setState(() {
          widget.onPressed(!widget.isFavorite);
        });
      },
    );
  }
}
