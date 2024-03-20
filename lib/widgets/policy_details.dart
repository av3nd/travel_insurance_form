import 'package:flutter/material.dart';

class PolicyDetailsScreen extends StatefulWidget {
  const PolicyDetailsScreen({super.key});

  @override
  State<PolicyDetailsScreen> createState() => _PolicyDetailsScreenState();
}

class _PolicyDetailsScreenState extends State<PolicyDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      // height: 800,
      // color: Colors.green,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          // BoxShadow(
          //   color: Colors.grey,
          //   offset: Offset(
          //     5.0,
          //     5.0,
          //   ),
          //   blurRadius: 10.0,
          //   spreadRadius: 2.0,
          // ), //BoxShadow
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 40,
            color: Colors.brown[50],
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text('Policy Details'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trip Type',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Single Trip',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plan',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Plan 2',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Origin',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Nepal',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Destination',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Antartica',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start Date',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Sun, Mar 24 2024',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End Date',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Mon, Mar 25 2024',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
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
