import 'package:doctor_app/app/shared/widgets/item_content_history.dart';
import 'package:flutter/material.dart';

class ItemHistory extends StatelessWidget {
  const ItemHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.5, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tháng 1',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontFamily: 'Inter',
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 18.5,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ItemContentHistory();
            },
          ),
        ],
      ),
    );
  }
}
