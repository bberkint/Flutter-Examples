import 'package:flutter/material.dart';
import 'package:flutter_nesnellik/models/personel.dart';
import 'package:flutter_nesnellik/screens/personel_add.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Personel selectedPersonel = Personel.withId(0, "", "", 0, "");

  List<Personel> personelListesi = [
    Personel.withId(1, "Batın Berkin", "Topaloğlu", 5, "evli"),
    Personel.withId(2, "Hasret", "Adıgüzel", 10, "evli"),
    Personel.withId(3, "Mehmet", "Kayra", 15, "evli"),
  ];

  @override
  Widget build(BuildContext context) {
    var employees = [
      "Batın Berkin",
      "Ahmet Berke",
      "Zeynep",
      "Ayben",
      "Ali Veli",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Şirket Personel Uygulaması"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: personelListesi.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.log.com.tr/wp-content/uploads/2019/07/3d-portreler-2-660x814.jpg"),
                  ),
                  title: Text(personelListesi[index].ad +
                      " " +
                      personelListesi[index].soyad),
                  subtitle: Text("Kıdem yılı : " +
                      personelListesi[index].kidem.toString() +
                      "  Ünvan : " +
                      personelListesi[index].getDurum),
                  trailing: builStatusIcon(personelListesi[index].kidem),
                  onTap: () {
                    setState(() {
                      selectedPersonel = personelListesi[index];
                    });

                    print(personelListesi[index].ad +
                        " " +
                        personelListesi[index].soyad +
                        " Tıklandı");
                  },
                  onLongPress: () {
                    print(personelListesi[index].ad +
                        " " +
                        personelListesi[index].soyad +
                        " sağ tıklandı");
                  },
                );
              },
            ),
          ),
          Text("Seçili Personel : " + selectedPersonel.ad),
          Row(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: RaisedButton(
                  color: Colors.green,
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 4.0),
                      Text("Ekle"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PersonelAdd(personelListesi))).then((value) {
                      setState(() {});
                    });
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: RaisedButton(
                  color: Colors.amber,
                  child: Row(
                    children: [
                      Icon(Icons.update),
                      SizedBox(width: 4.0),
                      Text("Güncelle"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: RaisedButton(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Icon(Icons.delete_outline),
                      SizedBox(width: 4.0),
                      Text("Sil"),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      personelListesi.remove(selectedPersonel);
                    });
                    var alert = AlertDialog(
                      title: Text("İşlem Sonucu"),
                      content: Text(selectedPersonel.ad + " Silindi"),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => alert);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget builStatusIcon(int kidem) {
    if (kidem <= 6) {
      return const Icon(Icons.check_box);
    } else if (kidem <= 12) {
      return Icon(Icons.check_circle_outline);
    } else {
      return Icon(Icons.done);
    }
  }
}
