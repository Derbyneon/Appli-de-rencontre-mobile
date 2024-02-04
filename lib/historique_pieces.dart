import 'package:flutter/material.dart';
import 'Pagepieces.dart';

class HistoriquePieces extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        date: '1 Janvier 2022',
        description: "Envoie d'une demande",
        amount: -12.99),
    Transaction(
        date: '5 Février 2022',
        description: "Recompe d'activité",
        amount: 20.5),
    // Ajoutez ici les autres transactions souhaitées
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PiecePage()),
            );
          },
        ),
        title: Text('Transactions'),
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (BuildContext context, int index) {
            Transaction transaction = transactions[index];
            Color amountColor =
                transaction.amount >= 0 ? Colors.green : Colors.red;

            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.date,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          transaction.description,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${transaction.amount} ',
                              style: TextStyle(color: amountColor),
                            ),
                            Image.asset(
                              'assets/coins_w.png',
                              width: 20,
                              height: 20,
                              color: amountColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Transaction {
  final String date;
  final String description;
  final double amount;

  Transaction({
    required this.date,
    required this.description,
    required this.amount,
  });
}
