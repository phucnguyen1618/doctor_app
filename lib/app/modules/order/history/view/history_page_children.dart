part of 'history_page.dart';

extension HistoryPageChildren on HistoryPage {
  Widget _buildHistories() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ItemHistory();
        },
      ),
    );
  }

  Widget _buildTimeMenu() {
    return Container(
      width: double.infinity,
      padding:
          const EdgeInsets.only(left: 23.0, right: 23.0, top: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE4E4E4).withOpacity(0.25),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Obx(
        () => DropdownButton(
            borderRadius: BorderRadius.circular(16.0),
            underline: const SizedBox(),
            value: controller.historyValue.value,
            isExpanded: true,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.greyColor,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            items: controller.histories.map((String item) {
              return DropdownMenuItem<String>(value: item, child: Text(item));
            }).toList(),
            onChanged: (String? newValue) {
              controller.historyValue.value = newValue!;
            }),
      ),
    );
  }
}
