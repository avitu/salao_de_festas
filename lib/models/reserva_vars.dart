
//variaveis que recebem os dados do formulario de reserva

class Reserva {

  final String id;
  final String name;
  final String telefone;
  final String email;
  final String data;
  final String blocoeap;
  final String avatarurl;
  final String horario;

   const Reserva ({
     required this.id,
     required this.name,
     required this.telefone,
     required this.email,
     required this.data,
     required this.avatarurl,
     required this.blocoeap,
     required this.horario
});
}