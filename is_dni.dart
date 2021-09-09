
bool isDNI(String dni) {
  if(dni.length!=9) return false;
  final String _dniNieRegex = "^[XYZ]?[0-9]{7,8}[A-Z]{1}\$";
  if(!RegExp(_dniNieRegex).hasMatch(dni.toUpperCase())) return false;
  final letters = 'TRWAGMYFPDXBNJZSQVHLCKET';
  String dniNumber;
  String dniLetter;
  dniNumber=dni.substring(0,dni.length-1).toUpperCase();
  dniLetter=dni.substring(dni.length-1).toUpperCase();
  if(dniNumber.startsWith('X')) dniNumber=dniNumber.replaceFirst('X','0');
  if(dniNumber.startsWith('Y')) dniNumber=dniNumber.replaceFirst('Y','1');
  if(dniNumber.startsWith('Z')) dniNumber=dniNumber.replaceFirst('Z','2');
  final pos = int.parse(dniNumber)%23;
  return dniLetter==letters[pos];
}
