import 'package:flutter/material.dart';

class SendLunchPage extends StatefulWidget {
  const SendLunchPage({super.key});

  @override
  State<SendLunchPage> createState() => _SendLunchPageState();
}

class _SendLunchPageState extends State<SendLunchPage> {
  final TextEditingController commitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 56,
                left: 24,
              ),
              width: 216,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  Text(
                    'Send Lunch',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 136,
                left: 115,
                right: 115,
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  Text('Folajomi Bello'),
                  Text('Product Designer'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 321,
                left: 59,
                right: 59,
              ),
              child: Column(
                children: [
                  Text('Select the amount of free lunch'),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('1'),
                            Icon(Icons.food_bank),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('2'),
                            Icon(Icons.food_bank),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('3'),
                            Icon(Icons.food_bank),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('4'),
                            Icon(Icons.food_bank),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text('Lunch Bal 12'),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(
                  top: 446,
                  left: 24,
                ),
                child: const Text('Say something nice (Optional)')),
            Container(
              margin: const EdgeInsets.only(
                top: 468,
                left: 24,
                right: 24,
              ),
              child: TextField(
                controller: commitController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  hintText: 'Great Job! You are true mentor. Enjoy the lunch!',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(140, 140, 140, 1),
                      style: BorderStyle.solid,
                    ),
                  ),
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
                  debugPrint('Send Lunch');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(342, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  elevation: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.food_bank),
                    Text('Send Lunch'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
