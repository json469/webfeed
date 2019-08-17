import 'package:xml/xml.dart';

class RssMeta {
  final int commentCount;
  final String link;
  final int clickCount;
  final String expiry;
  final int votesPos;
  final int votesNeg;
  final String url;
  final String image;

  RssMeta({
    this.commentCount,
    this.link,
    this.clickCount,
    this.expiry,
    this.votesPos,
    this.votesNeg,
    this.url,
    this.image,
  });

  factory RssMeta.parse(XmlElement node) {
    if (node == null) {
      return null;
    }
    return RssMeta(
      commentCount: int.parse(node.getAttribute("comment-count")),
      link: node.getAttribute("link"),
      clickCount: int.parse(node.getAttribute("click-count")),
      expiry: node.getAttribute("expiry"),
      votesPos: int.parse(node.getAttribute("votes-pos")),
      votesNeg: int.parse(node.getAttribute("votes-neg")),
      url: node.getAttribute("url"),
      image: node.getAttribute("image"),
    );
  }
}
