class ArmasRepository {
  final api;
  ArmasRepository(this.api);
  loadArmas() => api.getArmas();
}
