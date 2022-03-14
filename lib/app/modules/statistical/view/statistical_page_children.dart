part of 'statistical_page.dart';

extension StatisticalPageChildren on StatisticalPage {
  Widget _buildDateTimeTitle() {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                _buildPatientCard(
                  'Bệnh nhân mới',
                  '16',
                  '12%',
                  ColorConstants.accentColor,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                _buildPatientCard(
                  'Bệnh nhân cũ ',
                  '05',
                  '2%',
                  const Color(0xFFFF754C),
                ),
              ],
            ),
            const SizedBox(
              width: 16.0,
            ),
            _buildTotalOrders(),
          ],
        ),
      ],
    );
  }

  Widget _buildPatientCard(
      String title, String number, String percentage, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(Color.getAlphaFromOpacity(0.1), 14, 30, 58),
            spreadRadius: 0.0,
            blurRadius: 10.0,
            offset: const Offset(0.0, 4.0), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: 'Inter',
              color: ColorConstants.greyColor,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            number,
            style: const TextStyle(
              height: 1.34,
              fontSize: 32.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: 'SVN-Gotham',
              color: ColorConstants.pinColor,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.only(
                left: 4.0, top: 2.0, right: 4.0, bottom: 2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_drop_up,
                  color: color,
                  size: 16.0,
                ),
                Text(
                  percentage,
                  style: TextStyle(
                    height: 1.6,
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalOrders() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(Color.getAlphaFromOpacity(0.1), 14, 30, 58),
              spreadRadius: 0.0,
              blurRadius: 10.0,
              offset: const Offset(0.0, 4.0), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                    customWidths: CustomSliderWidths(
                        trackWidth: 14, progressBarWidth: 14, shadowWidth: 20),
                    customColors: CustomSliderColors(
                        dotColor: Colors.transparent,
                        trackColor: ColorConstants.trackColor,
                        progressBarColor: ColorConstants.progressBarColor,
                        shadowColor: Colors.white,
                        shadowStep: 8.0,
                        shadowMaxOpacity: 0.6),
                    startAngle: 270,
                    angleRange: 360,
                    size: 146.0,
                    animationEnabled: false),
                min: 0,
                max: 100,
                initialValue: 80,
                innerWidget: (double value) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                            customWidths: CustomSliderWidths(
                                trackWidth: 14,
                                progressBarWidth: 14,
                                shadowWidth: 20),
                            customColors: CustomSliderColors(
                                dotColor: Colors.transparent,
                                trackColor: ColorConstants.trackColor,
                                progressBarColor: ColorConstants.accentColor,
                                shadowColor: Colors.white,
                                shadowStep: 8.0,
                                shadowMaxOpacity: 0.6),
                            startAngle: 100,
                            angleRange: 360,
                            size: 145.0,
                            animationEnabled: false),
                        min: 0,
                        max: 100,
                        initialValue: 20,
                        innerWidget: (value) {
                          return Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  text: '140\n',
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontFamily: 'SVN-Gotham',
                                      color: ColorConstants.pinColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text: 'Đơn',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstants.greyColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            _buildRow(
              'Nam 80%',
              const Color(0xFFFF754C),
            ),
            const SizedBox(
              height: 9.5,
            ),
            _buildRow(
              'Nữ 20%',
              const Color(0xFF7FBA7A),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String content, Color color) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 27.0,
          height: 13.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: color,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }

  Widget _buildOrderChart() {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(Color.getAlphaFromOpacity(0.1), 14, 30, 58),
            spreadRadius: 0.0,
            blurRadius: 10.0,
            offset: const Offset(0.0, 4.0), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Biểu đồ số đơn hàng',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Inter',
                  color: ColorConstants.titleColor,
                ),
              ),
              Text(
                '160 đơn',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  color: ColorConstants.secondaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 33.0,
          ),
          SizedBox(
            height: 200.0,
            child: BarChart(
              BarChartData(
                barTouchData: barTouchData,
                titlesData: titlesData,
                borderData: borderData,
                barGroups: barGroups,
                alignment: BarChartAlignment.spaceAround,
                gridData: FlGridData(
                  show: false,
                ),
                maxY: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: const EdgeInsets.all(0),
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.y.round().toString(),
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: ColorConstants.greyColor,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter',
            fontSize: 12,
          ),
          margin: 16.0,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'T2';
              case 1:
                return 'T3';
              case 2:
                return 'T4';
              case 3:
                return 'T5';
              case 4:
                return 'T6';
              case 5:
                return 'T7';
              case 6:
                return 'CN';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 86, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(86, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 46, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(46, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 110, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(110, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 74, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(74, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 101, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(101, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 132, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(132, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              width: 16.0,
              y: 150,
              rodStackItems: [
                BarChartRodStackItem(0, 81, const Color(0xFFC7DCFF)),
                BarChartRodStackItem(81, 150, const Color(0xFFE9EDF7)),
              ],
            )
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}
