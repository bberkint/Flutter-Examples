import 'package:flutter/material.dart';
import 'package:flutter_nesnellik/models/personel.dart';
import 'package:flutter_nesnellik/validation/personel_validator.dart';

class PersonelAdd extends StatefulWidget {
  List<Personel> personelListesi;
  PersonelAdd(this.personelListesi);

  @override
  State<StatefulWidget> createState() {
    return PersonelAddState(personelListesi);
  }
}

class PersonelAddState extends State with PersonelValidationMixin {
  late List<Personel> personelListesi;
  var personel = Personel.withoutInfo();
  var formKey = GlobalKey<FormState>();
  PersonelAddState(List<Personel> personelListesi) {
    this.personelListesi = personelListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Personel Ekle"),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration:
                    InputDecoration(labelText: "Personel Adı", hintText: "Ad"),
                validator: validateAd(personel.ad),
                onSaved: (value) {
                  personel.ad = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Personel Soyadı", hintText: "Soyad"),
                validator: validatedSoyad(personel.soyad),
                onSaved: (value) {
                  personel.soyad = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Personel Kıdemi", hintText: "Kıdem"),
                validator: validateKidem(personel.kidem.toString()),
                onSaved: (value) {
                  personel.kidem = int.parse(value!);
                },
              ),
              kaydetButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget kaydetButton() {
    return RaisedButton(
      child: Text("Kaydet"),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          personelListesi.add(personel);
          Navigator.pop(context);
        }
      },
    );
  }
}
