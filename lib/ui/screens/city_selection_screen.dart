import 'package:flutter/material.dart';

class CitySelectionScreen extends StatefulWidget {
  static const String routeName = '/city_selection_screen';

  const CitySelectionScreen({Key? key}) : super(key: key);

  @override
  State<CitySelectionScreen> createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Select City',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 0.8,
                            spreadRadius: 0.8,
                          )
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your city name',
                        hintStyle: const TextStyle(
                          color: Color(0xffA8A8A8),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xffF6F6F6),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.my_location_outlined,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xffF6F6F6),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.my_location_outlined,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xffF6F6F6),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.my_location_outlined,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xffF6F6F6),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.my_location_outlined,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
