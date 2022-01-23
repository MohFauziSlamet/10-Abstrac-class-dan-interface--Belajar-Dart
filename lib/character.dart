class character {
  int _healtPoint;

  int get healtPoint => _healtPoint;

  void set healtPoint(int value) {
    // mengecek , healtPoint tidak boleh negatif
    if (value < 0) {
      value = value * -1;
    }
    // mengecek , healtPoint tidak boleh dibawah 10
    if (value < 10) {
      value = 10;
    }
    _healtPoint = value;
  }
}
