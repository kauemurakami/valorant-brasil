import 'package:valorant_brasil/data/provider/my_api.dart';

class PublicacoesRepository {
  final ValorantApi api = ValorantApi();

  getPublicacoes() => api.getPublicacoes();
}
