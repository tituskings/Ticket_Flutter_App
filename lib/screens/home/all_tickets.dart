import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/all_json.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TicketView(
                        ticket: singleTicket,
                        wholeScreen: true,
                      )))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
