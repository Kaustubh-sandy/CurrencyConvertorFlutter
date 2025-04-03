import 'package:acm_project_2/Pages/profile_page.dart';
import 'package:acm_project_2/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';


class CurrencyConverterScreen extends StatefulWidget {
  const CurrencyConverterScreen({super.key});

  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  double amount = 0;
  double convertedAmount = 0;
  String selectedCurrency = 'INR';
  String currentCurrency = 'USD';
  final double _result = 1.0;
  double conversionRate = 0;

  final TextEditingController _controller = TextEditingController();

  // Future<void> fetchData() async {
  //   try {
  //     String apiUrl = 'https://anyapi.io/api/v1/exchange/convert';
  //     String apiKey = 'nv2d68jtjio0l5ruua5p38cqlune29ml72ompdl22cong0dbh1kve8';
  //     final response = await http.get(
  //       Uri.parse('$apiUrl?apiKey=$apiKey&base=$currentCurrency&to=$selectedCurrency&amount=$amount'),
  //     );
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> responseData = json.decode(response.body);
  //       setState(() {
  //         conversionRate = double.parse(responseData["rate"].toStringAsFixed(3));
  //         convertedAmount = double.parse(responseData["converted"].toStringAsFixed(3));
  //       });
  //     } else {
  //       throw Exception('Failed to fetch conversion rate.');
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Error: $e')),
  //     );
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextCusButton(
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              text: "Profile",
            ),
            const Padding(padding: EdgeInsets.all(1.0)),
            TextCusButton(
              func: () {
                Navigator.push;
              },
              text: "Settings",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'EXCHANGE',
                style: TextStyle(fontFamily: 'Orbitron'),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "CURRENCY CONVERTER",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Orbitron',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 90),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  amount = double.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    value: currentCurrency,
                    onChanged: (String? newValue) {
                      // Change type to String?
                      if (newValue != null) {
                        setState(() {
                          currentCurrency = newValue;
                        });
                      }
                    },
                    items: <String>[
                      'USD',
                      'PHP',
                      'SGD',
                      'EUR',
                      'JPY',
                      'BGN',
                      'INR'
                    ]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'TO',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  DropdownButton<String>(
                    value: selectedCurrency,
                    onChanged: (String? newValue) {
                      // Change type to String?
                      if (newValue != null) {
                        setState(() {
                          selectedCurrency = newValue;
                        });
                      }
                    },
                    items: <String>[
                      'USD',
                      'PHP',
                      'SGD',
                      'EUR',
                      'JPY',
                      'BGN',
                      'INR'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: null,
              child: const Text(
                'Convert',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Conversion Rate is $conversionRate',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Converted Amount: $convertedAmount $selectedCurrency',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
