import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

import '../models/paper.dart';

class PaperService {
  Uri _constructUrl(String query) {
    return Uri.parse(
        'http://export.arxiv.org/api/query?search_query=all:"$query"&start=0&max_results=20');
  }

  Future<List<Paper>> queryPapers(String query) async {
    http.Response response = await http.get(
      _constructUrl(query),
    );
    if (response.statusCode == 200) {
      var atomFeed = AtomFeed.parse(response.body);
      return atomFeed.items?.map((e) => Paper.fromAtomItem(e)).toList() ?? [];
    } else {
      return [];
    }
  }

  
}
