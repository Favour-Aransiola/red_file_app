extension usefulExtensions on num {
  // Responsive width
  double wp(width) {
    return (this * width) / 375;
  }

  // Responsive Text
  double rem(width) {
    return (this * width) / 375;
  }
}
