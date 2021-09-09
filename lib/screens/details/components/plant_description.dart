import 'package:flutter/material.dart';

import '../../../constants.dart';

class PlantDescription extends StatelessWidget {
  const PlantDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'With the aliminum plants easy going nature and lack of any real growing problems, '
        'it will bush out from its container in leaves of silver and green for up to four years before it dies. '
        'The leaves are normally squat and broad, measuring up to 12 inches (30 cm) long and up to 8 inches (21 cm) wide. '
        'The root system is extensive, and will break containers if it needs more room. '
        'This root system must be observed on an annual basis in order to re-pot before pot breakage occurs.',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      decoration: BoxDecoration(

      ),
    );
  }
}
