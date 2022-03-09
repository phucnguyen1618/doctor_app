part of 'group_page.dart';

extension GroupPageChildren on GroupPage {

  Widget _buildGroupDoctor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nhóm Bác sĩ DHA',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          height: 60.0,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: controller.groups.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return index == 0
                  ? const ItemAddDoctor()
                  : ItemGroupDoctor(avatar: controller.groups[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListMessages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cá nhân',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            color: ColorConstants.greyColor,
          ),
        ),
        ListView.builder(
          padding: const EdgeInsets.only(right: 10.0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.messageList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemMessage(message: controller.messageList[index]);
          },
        ),
      ],
    );
  }

  Widget _buildGeneral(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Chung',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            color: ColorConstants.greyColor,
          ),
        ),
        ListView.builder(
          padding: const EdgeInsets.only(right: 10.0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemMessage(message: controller.messageList[index]);
          },
        ),
      ],
    );
  }
}