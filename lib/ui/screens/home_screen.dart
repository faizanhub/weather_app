import 'package:flutter/material.dart';
import 'package:weather_app_techidaara/core/models/weather_model.dart';
import 'package:weather_app_techidaara/core/services/location_service.dart';
import 'package:weather_app_techidaara/core/services/weather_service.dart';
import 'package:weather_app_techidaara/core/utils/get_date.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home_screen';

  final WeatherModel weatherModel;

  const HomeScreen({Key? key, required this.weatherModel}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  ///Row of header
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.weatherModel.location?.country ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),

                  Text(
                    '${widget.weatherModel.current?.tempC!.toStringAsFixed(0)}°' ??
                        '',
                    style: const TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),

                  Text(
                    widget.weatherModel.forecast?.forecastday?.first.day
                            ?.condition?.text
                            .toString() ??
                        '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${widget.weatherModel.location?.name} ${widget.weatherModel.location?.country} ',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5F5F5F),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 20);
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.weatherModel.forecast?.forecastday
                              ?.first.hour?.length ??
                          10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text(getFormattedTime(widget.weatherModel.forecast
                                    ?.forecastday?.first.hour![index].time ??
                                '')),
                            const SizedBox(height: 5),
                            const Icon(
                              Icons.cloud_outlined,
                            ),
                            const SizedBox(height: 5),
                            Text(
                                '${widget.weatherModel.forecast?.forecastday?.first.hour![index].tempC!.toStringAsFixed(0)}°'),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
