abstract class Playable {
  play();
  pause();
  stop();
}

class MediaFile implements Playable {
  String title;
  String duration;
  String url;
  MediaFile(this.title, this.duration, this.url);
  @override
  play() {
    print('Playing $title');
    print("Duration time: $duration");
    print("url of music: $url");
  }

  pause() {
    print('Pausing $title');
  }

  stop() {
    print('Stopping $title');
  }
}

class Playlist extends MediaFile with Shuffleable {
  List<MediaFile> files;
  String nameOfPlaylist;
  Playlist(super.title, super.duration, super.url,
      {required this.files, required this.nameOfPlaylist});
  playPlaylist() {
    files.forEach((element) {
      element.play();
    });
  }
}

mixin Shuffleable {}

main() {
  Playlist music1 = Playlist("Against The Current - Legends Never Die", "2:58",
      "https://www.youtube.com/watch?v=r6zIGXun57U",
      files: [], nameOfPlaylist: "League of Legends");
  music1.play();
  Playlist music2 = Playlist("Imagine Dragons x J.I.D - Enemy", "3:33",
      "https://www.youtube.com/watch?v=D9G1VOjN_84",
      files: [], nameOfPlaylist: "League of Legends");
  music2.play();
}
