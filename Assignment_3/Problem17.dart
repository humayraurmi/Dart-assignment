class Playable {
  void play() {
    print("Playing...");
  }
}

class Football implements Playable {
  @override
  void play() {
    print("Playing Football.");
  }
}

class Cricket implements Playable {
  @override
  void play() {
    print("Playing Cricket.");
  }
}

void main() {
  Football football = Football();
  Cricket cricket = Cricket();

  football.play();
  cricket.play();
}