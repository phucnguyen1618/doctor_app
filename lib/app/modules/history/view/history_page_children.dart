part of 'history_page.dart';

extension HistoryPageChildren on HistoryPage {

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: ColorConstants.primaryColor,
      centerTitle: true,
      title: const Text('Lịch sử', style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: 'SVN-Gotham',
      ),),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color:
            ColorConstants.dividerColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(16.0),
          width: Get.width,
          height: 56.0,
          child: DropdownButton(
            dropdownColor: ColorConstants.backgroundColor,
            borderRadius: BorderRadius.circular(16.0),
            underline: const SizedBox(),
            value: controller.statusValue.value,
            isExpanded: true,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.pinColor,
            ),
            icon: const Icon(Icons.arrow_drop_down),
            items: controller.status.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.pinColor,
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {},
          ),
        ),
      ],
    );
  }
}