class Bob {
  Map<String, RegExp> convMap = {
    'Sure.': RegExp('.*[a-z0-9:),]+.*[\?]\\s*\$'),
    'Whoa, chill out!': RegExp('^[^a-z]*[A-Z]+[^a-z]*[^\?]\$'),
    'Calm down, I know what I\'m doing!': RegExp('[A-Z]{2}[\?\$]'),
    'Fine. Be that way!': RegExp('^\\s*\$'),
  };

  String response(String resp) {
    for (MapEntry<String, RegExp> me in convMap.entries) {
      if (me.value.hasMatch(resp)) {
        return me.key;
      }
    }
    return 'Whatever.';
  }
}
