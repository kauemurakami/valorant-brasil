class MapasRepository {
  final api;

  MapasRepository(this.api);

  getMaps() => this.api.getMapas();
}
