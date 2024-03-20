import 'package:flutter/material.dart';

class CostSummary extends StatefulWidget {
  const CostSummary({super.key});

  @override
  State<CostSummary> createState() => _CostSummaryState();
}

class _CostSummaryState extends State<CostSummary> {
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
              child: Text('Cost Summary'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Policy Cost',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'NRP 5,604.24',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Stamp Duty',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'NRP 20.00',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Vat',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'NRP 760.53',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
         
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                  Text(
                    'NRP 6,630.77',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            // alignment: Alignment.centerRight,
            child:const Padding(
              padding:  EdgeInsets.all(10.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.verified_outlined),
                  Text(
                    'Total with Covid Inclusion',
                    style: TextStyle(fontSize: 11, color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
