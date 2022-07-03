import 'package:flutter/material.dart';
import 'package:flutter_nesnellik/models/personel.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Personel> personelListesi = [
      Personel("Servet", "Topaloğlu", 12, "12"),
      Personel("Mehmet", "Kayra", 6, "2"),
      Personel("Ahmet Berke", "Topaloğlu", 4, "4")
    ];

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
