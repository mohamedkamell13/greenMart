import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:green_mart_app/features/search/functions/get_product_by_name.dart';
import 'package:green_mart_app/features/search/widgets/filtered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKey = '';
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Hero(
          tag: 'search',
          child: Material(
            child: CustomTextFormField(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search Store',
              textInputAction: TextInputAction.search,
              focusNode: focusNode,
              onChange: (value) {
                setState(() {
                  searchKey = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredGridView(products: getProductByName(searchKey)),
    );
  }
}
