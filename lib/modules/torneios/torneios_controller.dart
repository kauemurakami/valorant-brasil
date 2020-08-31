import 'package:firebase_admob/firebase_admob.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/torneio_model.dart';
import 'package:valorant_brasil/data/repository/torneios_repository.dart';
import 'package:valorant_brasil/modules/ad_mob/target_info.dart';

class TorneiosController extends GetxController {
  final repository = TorneiosRepository();

  final _torneios = List<Torneios>().obs;
  get torneios => this._torneios.value;
  set torneios(value) => this._torneios.value = value;

  @override
  void onInit() {
    this.repository.getTorneios().then((data) => torneios = data);
  }

  // keywords: <String>[
  //   'e sports',
  //   'games',
  //   'riot',
  //   'valorant',
  //   'fps',
  //   '5v5',
  //   'csgo',
  //   'agentes',
  //   'valorant brasil',
  //   'torneios',
  //   'e games',
  //   'skins',
  //   'passe de batalha',
  //   'campeonatos valorant brasil',
  //   'riot games',
  //   'lol',
  //   'league of legends',
  //   'placa de video',
  //   'intel',
  //   'amd',
  //   'ryzen'
  // ],

  openWebPage() => '';
}
