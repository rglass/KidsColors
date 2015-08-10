import java.util.Map;

HashMap<String, Integer> colors;
HashMap<String, String> sounds_de;
HashMap<String, String> sounds_tr;

// Audio object HTML5
Audio audio;
String lang;

float s, t;
void setup () {
  lang = "TR";
  colors = new HashMap<String, Integer>();
  sounds_de = new HashMap<String, String>();
  sounds_tr = new HashMap<String, String>();

  colors.put("yellow", color(#FAE600));
  sounds_de.put("yellow", "gelb.mp3");
  sounds_tr.put("yellow", "sari.mp3");

  colors.put("blue", color(#007AFA));
  sounds_de.put("blue", "blau.mp3");
  sounds_tr.put("blue", "mavi.mp3");

  colors.put("green", color(#00FA83));
  sounds_de.put("green", "gruen.mp3");
  sounds_tr.put("green", "yesil.mp3");

  colors.put("red", color(#FF0342));
  sounds_de.put("red", "rot.mp3");
  sounds_tr.put("red", "kirmizi.mp3");

  colors.put("white", color(#FFFFFF));
  sounds_de.put("white", "weiss.mp3");
  sounds_tr.put("white", "beyaz.mp3");

  colors.put("black", color(#000000));
  sounds_de.put("black", "schwarz.mp3");
  sounds_tr.put("black", "siyah.mp3");

  colors.put("brown", color(#A26214));
  sounds_de.put("brown", "braun.mp3");
  sounds_tr.put("brown", "kahverengi.mp3");

  colors.put("pink", color(#FF74DF));
  sounds_de.put("pink", "rosa.mp3");
  sounds_tr.put("pink", "pembe.mp3");

  colors.put("purple", color(#9674FF));
  sounds_de.put("purple", "lila.mp3");
  sounds_tr.put("purple", "mor.mp3");

  colors.put("grey", color(#8C8B8E));
  sounds_de.put("grey", "grau.mp3");
  sounds_tr.put("grey", "gri.mp3");

  size(1920, 1200); 

  audio = new Audio();
  setColor();
}

void setColor() {
  int i = colors.size();
  int r = int(random(i - 1));
  int j = 0;
  String tmp = "";
  for (String s : colors.keySet ()) {
    if (r == j) {
      tmp = s;
      break;
    }
    j++;
  }
  if (tmp.equals("")) {
  }
  background(colors.get(tmp));
  String dataPath = "sounds/";
  if (lang == "DE") {
    audio.setAttribute("src", dataPath + sounds_de.get(tmp));
    lang = "TR";
  } else {
    audio.setAttribute("src", dataPath + sounds_tr.get(tmp));
    lang = "DE";
  }
  audio.play();
}


void draw() {
  t = millis();

  if ((mousePressed || keyPressed) && (t - s) > 400) {
    setColor();
    s = millis();
  }
}


