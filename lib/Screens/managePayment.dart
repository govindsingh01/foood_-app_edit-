import 'package:flutter/material.dart';

class ManagePayment extends StatefulWidget {
  const ManagePayment({Key? key}) : super(key: key);

  @override
  State<ManagePayment> createState() => _ManagePaymentState();
}

class _ManagePaymentState extends State<ManagePayment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //Manage payments.........
              Container(
                padding: EdgeInsets.only(
                    top: size.height / 15, left: size.width / 30),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: size.width / 20,
                    ),
                    Text(
                      'Manage Payment Method',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              //zero heigh container..........
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                height: 1,
                color: Color.fromARGB(255, 228, 225, 225),
              ),

              //Cards.......

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cards',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),

                    //CREDIT , DEBIT  with right icon.....
                    paymentTab(
                      size: size,
                      title: 'Credit, Debit and ATM Cards',
                      paymentImage: 'assets/images/card2.jpg',
                      color: Colors.grey,
                    ),

                    //SODEXO..........

                    paymentTab(
                      size: size,
                      title: 'Sodexo Meal Pass',
                      paymentImage: 'assets/images/sodex.jpg',
                      color: Colors.grey,
                    ),

                    //zero height container......

                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                      height: 1,
                      color: Color.fromARGB(255, 228, 225, 225),
                    ),
                  ],
                ),
              ),

              //UPI..................................
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UPI',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),

                    //paytm
                    paymentTab(
                      size: size,
                      title: 'Paytm UPI',
                      paymentImage: 'assets/images/paytm.png',
                      color: Colors.white,
                    ),

                    //GPAY UPI

                    paymentTab(
                      size: size,
                      title: 'Google Pay',
                      paymentImage: 'assets/images/gpay3.jpg',
                      color: Colors.white,
                    ),
                    paymentTab(
                        size: size,
                        title: 'PhonePe',
                        paymentImage: 'assets/images/PhonePe2.png',
                        color: Colors.white),

                    //Column for PAY via upi and text below it
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        paymentTab(
                          size: size,
                          title: 'Pay via UPI',
                          paymentImage: 'assets/images/UPI2.jpg',
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width / 8),
                          child: Text(
                            'You need to have a registered UPI ID',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),

                    //zero height container......

                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                      height: 1,
                      color: Color.fromARGB(255, 228, 225, 225),
                    ),
                  ],
                ),
              ),

              //Wallets.........
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wallets',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),

                    //paytm..
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        paymentTab(
                          size: size,
                          title: 'Paytm',
                          paymentImage: 'assets/images/paytm.png',
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width / 8),
                          child: Text(
                            'Link your Paytm Wallet to use this payment method',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    //Mobiwik..........

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        paymentTab(
                          size: size,
                          title: 'Mobikwik',
                          paymentImage: 'assets/images/mobikwik2.jpg',
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width / 8),
                          child: Text(
                            'Link your Mobikwik Wallet to use this payment method',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),

                    //FREECHARGE...........
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        paymentTab(
                          size: size,
                          title: 'Freecharge',
                          paymentImage: 'assets/images/freecharge2.jpg',
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width / 8),
                          child: Text(
                            'Link your Freecharge Wallet to use this payment method',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),

                    //zero height container......

                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      height: 1,
                      color: Color.fromARGB(255, 228, 225, 225),
                    ),
                  ],
                ),
              ),

              Container(
                  //Wallets
                  ),
              Container(
                  //paytm,gpay.....
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class paymentTab extends StatelessWidget {
  paymentTab(
      {required this.size,
      required this.title,
      required this.paymentImage,
      required this.color});

  final Size size;
  String title;
  String paymentImage;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print('Tapped');
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //text left ot right icon container
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        paymentImage,
                        height: size.height / 25,
                        // width: size.width / 5,
                      ),
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              //right arrow.......
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
