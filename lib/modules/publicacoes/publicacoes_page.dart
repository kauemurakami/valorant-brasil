import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacoes/publicacoes_controller.dart';
import 'package:valorant_brasil/modules/publicacoes/widgets/publicacao_card.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class PublicacoesPage extends StatefulWidget {
  @override
  _TorneiosPageState createState() => _TorneiosPageState();
}

class _TorneiosPageState extends State<PublicacoesPage> {
  final controller = Get.put(PublicacoesController());
  InterstitialAd myInterstitial;
  MobileAdTargetingInfo targetingInfo;

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-8290430432077975~4623122828');
    myInterstitial = InterstitialAd(
      // Replace the testAdUnitId with an ad unit id from the AdMob dash.
      // https://developers.google.com/admob/android/test-ads
      // https://developers.google.com/admob/ios/test-ads
      adUnitId: 'ca-app-pub-8290430432077975/7861312641',
      targetingInfo: MobileAdTargetingInfo(
        keywords: <String>[
          'jogos de tiro',
          'jogos de fps'
              'e sports',
          'games',
          'riot',
          'valorant',
          'fps',
          '5v5',
          'csgo',
          'agentes',
          'valorant brasil',
          'torneios',
          'e games',
          'skins',
          'passe de batalha',
          'campeonatos valorant brasil',
          'riot games',
          'lol',
          'league of legends',
          'placa de video valorant',
          'intel valorant',
          'amd valorant ',
          'ryzen valorant',
          'hs valorant',
          'head shot',
          'armas valorant',
          'weapons valorant',
          'valorant infos'
        ],
        contentUrl: 'https://github.com/kauemurakami',
        childDirected: false,
        testDevices: <
            String>[], // Android emulators are considered test devices
      ),
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );
  }

  @override
  void dispose() {
    myInterstitial?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(8.0),
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        width: Get.width,
        child: Obx(() => controller.publicacoes.length < 1
            ? CustomLoading()
            : ListView.builder(
                itemCount: controller.publicacoes.length,
                itemBuilder: (context, index) {
                  return PublicacaoCard(controller.publicacoes[index]);
                },
              )),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
