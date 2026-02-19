import 'package:flame_audio/flame_audio.dart';

class AudioManager {
  // Singleton pattern
  static final AudioManager _instance = AudioManager._internal();
  factory AudioManager() => _instance;
  AudioManager._internal();
  bool _isMusicEnabled = true;
  bool _isSfxEnabled = true;
  double _musicVolume = 0.7;
  double _sfxVolume = 1.0;

  bool get isMusicEnabled => _isMusicEnabled;
  bool get isSfxEnabled => _isSfxEnabled;
  double get musicVolume => _musicVolume;
  double get sfxVolume => _sfxVolume;

  Future<void> initialize() async {
    try {
      await FlameAudio.audioCache.loadAll([
        'music/maksym_dudchyk-symphony-of-the-streets-hip-hop-background-music-for-video-50-second-476676.mp3',
        'sfx/universfield-button-124476.mp3',
      ]);
      print('Audio initialized successfully');
    } catch (e) {
      print('Error initializing audio: $e');
    }
  }
}
