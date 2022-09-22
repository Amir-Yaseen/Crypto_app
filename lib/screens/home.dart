import 'package:crypto_app/model/coin_gecko_model.dart';
import 'package:crypto_app/screens/detail_screen.dart';
import 'package:crypto_app/service/coin_gecko_service.dart';
import 'package:flutter/material.dart';
import '../widgets/coin_list_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_big_card.dart';
import '../widgets/custom_fav_card.dart';
import '../widgets/fav_row.dart';
import '../widgets/totalbalancesection.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CoinGeckoModel> coinslist = List.empty(growable: true);
  bool dataLoaded = false;
  void getcoindata() async {
    CoinGekoService.getcoinsdata().then((value) {
      if (value != null) {
        coinslist = value;
      }
      print(coinslist);
      setState(() {
        dataLoaded = true;
      });
    });
  }

  @override
  void initState() {
    getcoindata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 20,
                ),
                const TotalBalanceSection(),
                const SizedBox(
                  height: 20,
                ),
                const CustomBigCard(),
                const SizedBox(
                  height: 20,
                ),
                const Section(
                  text: 'Details',
                  url: 'asset/image/right-arrow.png',
                ),
                SizedBox(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: coinslist.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                          coinlist: coinslist,
                                          index: index,
                                          sprakline: coinslist[index]
                                              .sparklineIn7D
                                              .price,
                                        ))),
                            child: CustomFavCard(
                              width: 220,
                              height: 170,
                              name: coinslist[index].name,
                              percentage: coinslist[index].athChangePercentage,
                              abbrevation: coinslist[index].symbol,
                              price: coinslist[index].currentPrice,
                              image: coinslist[index].image,
                              sparkline: coinslist[index].sparklineIn7D.price,
                            ),
                          );
                        }))),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Assets',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: coinslist.length,
                        itemBuilder: ((context, index) {
                          return CoinListView(
                            coinslist: coinslist,
                            index: index,
                          );
                        }))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
