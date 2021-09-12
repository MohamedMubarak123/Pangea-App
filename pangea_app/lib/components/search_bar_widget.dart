import 'package:flutter/material.dart';
import 'package:pangea_app/utils/size_config.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged? onClickFilter;

  const SearchBarWidget({Key? key, this.onClickFilter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(SearchModal());
      },
      child: Container(
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: Border.all(
              color: Theme.of(context).focusColor.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(right: 12, left: 0),
              child: Icon(Icons.search, color: Colors.grey),
            ),
            Expanded(
              child: Text(
                'Search doctor by name',
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.fade,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .merge(const TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(0)),
            // InkWell(
            //   onTap: () {
            //     onClickFilter!('e');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
