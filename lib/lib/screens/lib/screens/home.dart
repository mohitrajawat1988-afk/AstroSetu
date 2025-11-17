import 'package:flutter/material.dart';
import 'kundli_form.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AstroSetu'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: Color(0xFF4B0082),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFE6B800),
                      child: Text('ॐ', style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                    SizedBox(width:12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Aaj Ka Rashifal',
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height:6),
                          Text('Aaj aapka din kaisa rahega — jaldi me dekhe',
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.white)
                  ],
                ),
              ),
            ),
            SizedBox(height:16),
            Row(
              children: [
                Expanded(
                  child: _featureCard(
                    context,
                    'Generate Kundli',
                    Icons.auto_awesome,
                    () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => KundliFormScreen())),
                  ),
                ),
                SizedBox(width:12),
                Expanded(
                  child: _featureCard(
                    context,
                    'Instant Prediction',
                    Icons.flash_on,
                    () {},
                  ),
                ),
              ],
            ),
            SizedBox(height:16),
            Text('Popular Services', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            SizedBox(height:8),
            Wrap(
              spacing:10,
              runSpacing:10,
              children: List.generate(4, (i) => Chip(label: Text(['Love','Career','Finance','Health'][i]))),
            ),
            SizedBox(height:24),
            Center(
              child: Text(
                'Powered by AstroSetu Predictive Engine',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => KundliFormScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _featureCard(BuildContext ctx, String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
