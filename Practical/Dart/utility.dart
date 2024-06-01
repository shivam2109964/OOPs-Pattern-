class StringUtils {
  //Utility methods to check if a string is null or empty
  static bool isNullOrEmpty(String? str) {
    return str == null || str.isEmpty;
  }

  //Utility methods to captilize the first latter of a string
  static String captilize(String str) {
    if (str.isEmpty) {
      return str;
    }
    return str[0].toUpperCase() + str.substring(1);
  }
}

void main() {
  String? testStr1 = null;
  String testStr2 = '';
  String testStr3 = 'shivam';

  print(StringUtils.isNullOrEmpty(testStr1));
  print(StringUtils.isNullOrEmpty(testStr2));
  print(StringUtils.isNullOrEmpty(testStr3));
  print("");
  print(StringUtils.captilize(testStr2));
  print(StringUtils.captilize(testStr3));
}
