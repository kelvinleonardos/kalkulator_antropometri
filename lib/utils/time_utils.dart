class TimeUtils {

  static const Map<int, List<int>> _dayPartRanges = {
    0: [5, 10],   // Pagi
    1: [11, 14],  // Siang
    2: [15, 18],  // Sore
    3: [0, 4],    // Malam (juga mencakup 19:00-23:59)
  };

  int getCurrentDayPart() {
    final now = DateTime.now().toLocal(); // Waktu lokal perangkat
    final hour = now.hour;

    for (final entry in _dayPartRanges.entries) {
      final partIndex = entry.key;
      final range = entry.value;

      // Malam memiliki dua rentang: 00:00-04:59 dan 19:00-23:59
      if (partIndex == 3) {
        if (hour >= 19 || hour <= 4) {
          return partIndex;
        }
      } else if (hour >= range[0] && hour <= range[1]) {
        return partIndex;
      }
    }

    return 3;
  }
}