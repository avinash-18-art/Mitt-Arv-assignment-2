import 'package:flutter/material.dart';

class SortFilter extends StatefulWidget {
  final List<String> sortOptions;
  final Function(String) onSortChanged;

  SortFilter({required this.sortOptions, required this.onSortChanged});

  @override
  _SortFilterState createState() => _SortFilterState();
}

class _SortFilterState extends State<SortFilter> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButton<String>(
        value: _selectedOption.isEmpty ? null : _selectedOption,
        hint: Text('Sort by'),
        items: widget.sortOptions.map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedOption = value!;
          });
          widget.onSortChanged(value!);
        },
      ),
    );
  }
}
