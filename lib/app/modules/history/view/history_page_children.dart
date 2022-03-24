part of 'history_page.dart';

extension HistoryPageChildren on HistoryPage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: const SizedBox(),
      elevation: 0.0,
      backgroundColor: ColorConstants.primaryColor,
      centerTitle: true,
      title: const Text(
        'Lịch sử',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontFamily: 'SVN-Gotham',
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 9.5),
                decoration: BoxDecoration(
                  color: ColorConstants.dividerColor.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: const EdgeInsets.all(16.0),
                height: 56.0,
                child: DropdownButton(
                  dropdownColor: ColorConstants.backgroundColor,
                  borderRadius: BorderRadius.circular(16.0),
                  underline: const SizedBox(),
                  value: controller.serviceValue.value,
                  hint: const Text(
                    'Dịch vụ',
                    style: TextStyle(
                      color: ColorConstants.greyColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  isExpanded: true,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.pinColor,
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  items: controller.services.map((String item) {
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
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 9.5),
                decoration: BoxDecoration(
                  color: ColorConstants.dividerColor.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: const EdgeInsets.all(16.0),
                height: 56.0,
                child: DropdownButton(
                  hint: const Text(
                    'Trạng thái',
                    style: TextStyle(
                      color: ColorConstants.greyColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
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
            ),
          ],
        ),
        const SizedBox(
          height: 22.5,
        ),
        SingleChildScrollView(
          child: Column(
            children: List.generate(
              3,
              (index) => const ItemHistory(),
            ).toList(),
          ),
        ),
      ],
    );
  }
}
