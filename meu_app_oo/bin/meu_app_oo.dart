import 'package:meu_app_oo/classes/pessoaFisica.dart';
import 'package:meu_app_oo/classes/pessoaJuridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var PessoaFisica1 = PessoaFisica("Danilo", "Rua 1", "18425465022");
  print(PessoaFisica1);

  var PessoaJuridica1 = PessoaJuridica("Joao", "Rua 2", "6506570000162",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(PessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(PessoaFisica1);
  enviarNotificacao.notificar(PessoaJuridica1);
}
