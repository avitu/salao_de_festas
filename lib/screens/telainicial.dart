import 'package:flutter/material.dart';
import 'package:salao_de_festas00/screens/cancelaraluguel.dart';
import 'package:salao_de_festas00/screens/teladealuguel.dart';
import 'package:salao_de_festas00/screens/user_list.dart';


class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salão de Festas"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TeladeAluguel(),
                        )
                    );
                  },
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size (120, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text("Aluguel",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24
                  )),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const GradedeAluguel(),
                        )
                    );
                  },
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size (120, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text("Grade De Aluguel",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 0,
                          color: Colors.black,
                          fontSize: 24
                      )),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => CancelarAluguel(),
                        )
                    );
                  },
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size (120, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text("Cancelar Aluguel",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24
                      )),
                ),
              ],
            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (null),
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size (120, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text("Opção 04",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24
                      )
                  ),
                ),
                TextButton(
                  onPressed: (null),
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size (120, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text("Opção 05",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24
                      )),
                ),
                TextButton(
                  onPressed: (null),
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size (120, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text("Opção 06",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24
                      )),
                ),
              ],
            ),*/

          ],
        ),
      ),
    );
  }
}