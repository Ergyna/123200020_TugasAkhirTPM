import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class KonversiWaktuPage extends StatefulWidget {
  @override
  _KonversiWaktuPageState createState() => _KonversiWaktuPageState();
}

class _KonversiWaktuPageState extends State<KonversiWaktuPage> {
  DateTime wibTime = DateTime.now();
  DateTime witTime = DateTime.now();
  DateTime witaTime = DateTime.now();
  DateTime londonTime = DateTime.now();

  String selectedConversion = 'WIT';

  void convertTime() {
    switch (selectedConversion) {
      case 'WIT':
        witTime = wibTime.add(Duration(hours: 2));
        break;
      case 'WITA':
        witaTime = wibTime.add(Duration(hours: 1));
        break;
      case 'London':
        londonTime = wibTime.add(Duration(hours: -6));
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Conversion'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('WIB Time'),
            subtitle: Text(DateFormat('yyyy-MM-dd HH:mm:ss').format(wibTime)),
          ),
          ListTile(
            title: Text('Converted Time'),
            subtitle: Text(getConvertedTime()),
          ),
          SizedBox(height: 20.0),
          Center(
            child: DropdownButton<String>(
              value: selectedConversion,
              items: ['WIT', 'WITA', 'London']
                  .map((value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedConversion = newValue!;
                  convertTime();
                });
              },
            ),
          )

        ],
      ),
    );
  }

  String getConvertedTime() {
    switch (selectedConversion) {
      case 'WIT':
        return DateFormat('yyyy-MM-dd HH:mm:ss').format(witTime);
      case 'WITA':
        return DateFormat('yyyy-MM-dd HH:mm:ss').format(witaTime);
      case 'London':
        return DateFormat('yyyy-MM-dd HH:mm:ss').format(londonTime);
      default:
        return '';
    }
  }
}
