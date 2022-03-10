part of 'schedule_page.dart';

extension SchedulePageChildren on SchedulePage {
  Widget _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Hôm nay, 22/01/2022',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: 'SVN-Gotham',
          ),
        ),
        Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: const Color(0xFFC7DCFF).withOpacity(0.5),
          ),
          child: SvgPicture.asset(
            IconConstants.dateRangeFill,
            fit: BoxFit.scaleDown,
            color: ColorConstants.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(
            height: 26.0,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ItemSchedule();
            },
          ),
        ],
      ),
    );
  }
}
