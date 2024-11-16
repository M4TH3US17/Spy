const double HEIGHT_SCREEN = 360;
const double WIDTH_SCREEN = 640;

double convertHeight(double pixels, double screenHeight) {
  double percent = ((pixels * 100) / screenHeight) / 100;
  return percent * screenHeight;
}

double convertWidth(double pixels, double screenWidth) {
  double percent = ((pixels * 100) / screenWidth) / 100;
  return percent * screenWidth;
}
