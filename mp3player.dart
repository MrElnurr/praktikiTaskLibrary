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
  }

  pause() {
    print('Pausing $title');
  }

  stop() {
    print('Stopping $title');
  }
}

mixin Shuffleable {
  void shufflePlaylist() {
    if (this is Playlist) {
      Playlist playlist = this as Playlist;
      playlist.files.shuffle();
    }
  }
}

class Playlist extends MediaFile with Shuffleable {
  List<MediaFile> files;
  Playlist(super.title, super.duration, super.url, {required this.files});
  playPlaylist() {
    files.forEach((element) {
      element.play();
    });
  }
}

main() {
  MediaFile mediaFile1 = MediaFile('Against The Current - Legends Never Die',
      "2:58", 'https://www.youtube.com/watch?v=r6zIGXun57U');
  MediaFile mediaFile2 = MediaFile('Imagine Dragons x J.I.D - Enemy', "3:33",
      'https://www.youtube.com/watch?v=D9G1VOjN_84');
  MediaFile mediaFile3 = MediaFile('Valerie Broussard - Awaken', "3:28",
      'https://www.youtube.com/watch?v=zF5Ddo9JdpY');
 MediaFile mediaFile4 = MediaFile(
      'Remix by Railgun - Черный Бумер',
      "04:02",
      'https://www.youtube.com/watch?v=GUUwdOcnJU8&list=RDGUUwdOcnJU');
  Playlist playlist = Playlist("", "", "",
      files: [mediaFile1, mediaFile2, mediaFile3, mediaFile4]);
  print(playlist.playPlaylist()); // normal print edir
  print("--------------------------------");
  playlist.shufflePlaylist(); // shuffle edir
  print(playlist.playPlaylist()); //shuffledan sonra print edir
}
