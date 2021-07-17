class HandleEventChangeResult {
  late String data;
  HandleEventChangeResult(Map<String, dynamic> json) {
    if(json.containsKey('data')) {
      this.data = json['data'];
    }
  }
}