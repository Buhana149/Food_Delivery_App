import 'package:flutter/material.dart';
import 'package:flutterme_credit_card/flutterme_credit_card/field.dart';
import 'package:flutterme_credit_card/flutterme_credit_card/utils/constants.dart';
import 'package:flutterme_credit_card/flutterme_credit_card/widgets/card/credit_card.dart';
import 'package:food_delivery_app/components/universal_custom_button.dart';
import 'package:food_delivery_app/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController cardHolderName = TextEditingController();
  TextEditingController cvvCode = TextEditingController();

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Confirm payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Card Number: ${cardNumber.text}'),
                Text('Expiry Date: ${expiryDate.text}'),
                Text('Card Holder name: ${cardHolderName.text}'),
                Text('CVV: ${cvvCode.text}'),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliveryProgressPage(),
                    ),
                  );
                },
                child: const Text('Yes')),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Checkout'),
      ),
      body: Column(
        children: [
          FMCreditCard(
            title: 'Visa Card',
            number: cardNumber.text,
            numberMaskType: FMMaskType.first6last2,
            cvv: cvvCode.text,
            cvvMaskType: FMMaskType.full,
            validThru: expiryDate.text,
            validThruMaskType: FMMaskType.none,
            holder: cardHolderName.text,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  FMHolderField(
                    controller: cardHolderName,
                    cursorColor: const Color(0xFF49B7AE),
                    decoration: InputDecoration(
                      labelText: "Card Holder",
                      hintText: "John Doe",
                    ),
                  ),
                  const SizedBox(height: 30),
                  FMNumberField(
                    controller: cardNumber,
                    cursorColor: const Color(0xFF49B7AE),
                    decoration: InputDecoration(
                      labelText: "Card Number",
                      hintText: "0000 0000 0000 0000",
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: FMValidThruField(
                          controller: expiryDate,
                          cursorColor: const Color(0xFF49B7AE),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF49B7AE),
                              ),
                            ),
                            labelStyle: TextStyle(color: Color(0xFF49B7AE)),
                            labelText: "Valid Thru",
                            hintText: "****",
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: FMCvvField(
                          controller: cvvCode,
                          cursorColor: const Color(0xFF49B7AE),
                          decoration: InputDecoration(
                            labelText: "CVV",
                            hintText: "***",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          MyButton(
            onTap: userTappedPay,
            text: 'Pay now',
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
