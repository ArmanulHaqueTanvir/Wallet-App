import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/icon_buttons.dart';
import 'package:wallet_app/utils/my_card.dart';
import 'package:wallet_app/utils/my_listTile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {},
          child: const Icon(
            Icons.monetization_on,
            size: 32,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 55,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink[200],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            // App bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cards ',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),

            // cards
            SizedBox(
              height: 180,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    color: Colors.deepPurple[300],
                    cardNumber: 123456789,
                    expiryMonth: 12,
                    balance: 5930.10,
                    expiryYear: 2025,
                  ),
                  MyCard(
                    color: Colors.blue[300],
                    cardNumber: 987654321,
                    expiryMonth: 12,
                    balance: 5930.10,
                    expiryYear: 2025,
                  ),
                  MyCard(
                    color: Colors.green[300],
                    cardNumber: 123459876,
                    expiryMonth: 12,
                    balance: 5930.10,
                    expiryYear: 2025,
                  ),
                ],
              ),
            ),
            // Dots indicators

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey,
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            // 3 buttons --> send +_ pay + bills
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIcon(
                    imagePath: 'icon/send-money.png',
                    textTitle: 'send',
                  ),
                  ButtonIcon(
                    imagePath: 'icon/bill.png',
                    textTitle: 'Bills',
                  ),
                  ButtonIcon(
                    imagePath: 'icon/atm-card.png',
                    textTitle: 'pay',
                  ),
                ],
              ),
            ),

            // column --> state + transaction

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                height: _height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      MyListTile(
                        imagePath: 'icon/analytics.png',
                        title: 'Statistics',
                        subtitle: 'Payment and Income',
                      ),
                      MyListTile(
                        imagePath: 'icon/money-transfer.png',
                        title: 'Transaction',
                        subtitle: 'Transaction History',
                      ),
                      MyListTile(
                        imagePath: 'icon/analytics.png',
                        title: 'Statistics',
                        subtitle: 'Payment and Income',
                      ),
                      MyListTile(
                        imagePath: 'icon/money-transfer.png',
                        title: 'Transaction',
                        subtitle: 'Transaction History',
                      ),
                      MyListTile(
                        imagePath: 'icon/analytics.png',
                        title: 'Statistics',
                        subtitle: 'Payment and Income',
                      ),
                      MyListTile(
                        imagePath: 'icon/money-transfer.png',
                        title: 'Transaction',
                        subtitle: 'Transaction History',
                      ),
                      MyListTile(
                        imagePath: 'icon/analytics.png',
                        title: 'Statistics',
                        subtitle: 'Payment and Income',
                      ),
                      MyListTile(
                        imagePath: 'icon/money-transfer.png',
                        title: 'Transaction',
                        subtitle: 'Transaction History',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
