import 'package:flutter/material.dart';

import '../../widgets/App_Bar2.dart';

class FAQPage extends StatelessWidget {
  final List<Map<String, String>> faqData = [
    {
      'question': 'What is Flutter?',
      'answer': 'Flutter is an open-source UI software development toolkit created by Google.'
    },
    {
      'question': 'How do I install Flutter?',
      'answer': 'You can install Flutter by following the instructions on the official Flutter website.'
    },
    {
      'question': 'Is Flutter free?',
      'answer': 'Yes, Flutter is completely free and open-source.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: const AppBar2(PageName: 'FAQ'),
              ),
              SizedBox(height: 25,),
              Column(
                children: faqData.map((faq) {
                  return FAQItem(
                    question: faq['question']!,
                    answer: faq['answer']!,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.question),
            trailing: Container(
              decoration: BoxDecoration(
                color: Color(0xff2AB09C),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                isExpanded ? Icons.remove : Icons.add,
                color: Colors.white,
              ),
            ),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(widget.answer),
            ),
        ],
      ),
    );
  }
}
