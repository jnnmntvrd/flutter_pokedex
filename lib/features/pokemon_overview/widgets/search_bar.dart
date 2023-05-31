import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    required this.controller,
    required this.onSearch,
    required this.onClear,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final Function(String) onSearch;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        onChanged: onSearch,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3.0,
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 5.0,
              color: Colors.blue,
            ),
          ),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            onPressed: onClear,
            icon: const Icon(Icons.close),
          ),
        ),
      ),
    );
  }
}
