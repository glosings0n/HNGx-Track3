import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/typography.dart';

class SendRequestPage extends StatelessWidget {
  const SendRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                      color: AppColors.tBlur,
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                width: 342,
                height: 460,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 84,
                    horizontal: 20,
                  ),
                  child: SizedBox(
                    height: 284,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 140,
                          height: 140,
                          child: Image.asset('assets/images/burger.png'),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Withdrawal request sent',
                          style: AppTypography.subHeader,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'You should be expecting your withdrawal in a couple of days. Check your mail for more details',
                          style: AppTypography.bodyText3Black,
                          textAlign: TextAlign.center,
                        ),
                      ],
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
                    FocusScope.of(context).requestFocus(FocusNode());
                    debugPrint('Return Home');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(342, 56),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Return Home',
                    style: AppTypography.button2Text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
