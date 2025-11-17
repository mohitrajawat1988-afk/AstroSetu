import 'package:flutter/material.dart';

class KundliFormScreen extends StatefulWidget {
  @override
  _KundliFormScreenState createState() => _KundliFormScreenState();
}

class _KundliFormScreenState extends State<KundliFormScreen> {
  final _name = TextEditingController();
  final _dob = TextEditingController();
  final _tob = TextEditingController();
  final _place = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate Kundli')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _name, decoration: InputDecoration(labelText: 'Full name')),
            TextField(controller: _dob, decoration: InputDecoration(labelText: 'DOB (YYYY-MM-DD)')),
            TextField(controller: _tob, decoration: InputDecoration(labelText: 'Time of birth (HH:MM)')),
            TextField(controller: _place, decoration: InputDecoration(labelText: 'Place/City')),
            SizedBox(height:16),
            ElevatedButton(onPressed: _generate, child: Text('Generate')),
          ],
        ),
      ),
    );
  }

  void _generate() {
    final result = 'AstroSetu Predictive Engine Result:\\n\\nAapki kundli summary: Strong career prospects, good luck phase...';
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => ResultScreen(result: result)));
  }
}

class ResultScreen extends StatelessWidget {
  final String result;
  ResultScreen({required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Reading')),
      body: Padding(padding: EdgeInsets.all(16), child: Text(result)),
    );
  }
}
