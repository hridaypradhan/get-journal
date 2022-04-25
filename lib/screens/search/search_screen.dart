import 'package:flutter/material.dart';
import '../../global/constants/colors.dart';

class SearchScreen extends StatefulWidget {
  final Function onPop;
  const SearchScreen({
    Key? key,
    required this.onPop,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              widget.onPop();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: kPrimaryBlue,
              size: 30.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: TextField(
              autofocus: true,
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search by author or title',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: kPrimaryBlue,
                ),
                icon: Icon(
                  Icons.search,
                  color: kPrimaryBlue,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: kLightGreen,
          width: 2.0,
        ),
        color: kLightBlue.withOpacity(0.8),
      ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
    );
  }
}
