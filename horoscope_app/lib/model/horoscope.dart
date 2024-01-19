class Horoscope {
  final String _name;
  final String _date;
  final String _detal;
  final String _image;
  final String _bigImage;

  get name => _name;

  get date => _date;

  get detal => _detal;

  get image => _image;

  get bigImage => _bigImage;

  Horoscope(
      {required String name,
      required String date,
      required String detal,
      required String image,
      required String bigImage})
      : _name = name,
        _date = date,
        _detal = detal,
        _image = image,
        _bigImage = bigImage;
}
