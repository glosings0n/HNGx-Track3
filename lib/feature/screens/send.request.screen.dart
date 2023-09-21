import 'package:flutter/material.dart';

class SendRequestPage extends StatelessWidget {
  const SendRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 192,
                  left: 24,
                  right: 24,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                width: 342,
                height: 460,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 84,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 140,
                        height: 140,
                        child: Text('Losingson'),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Withdrawal request\nsent',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'You should be expecting your withdrawal in a couple of days. Check your mail for more details',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 740,
                  left: 24,
                  right: 24,
                ),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Return Home');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(342, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    elevation: 0,
                  ),
                  child: const Text('Return Home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}