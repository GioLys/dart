import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/NotificacaoInterface.dart';
import 'package:meu_app_oo/service/impl/NoticacaoEmail.dart';
import 'package:meu_app_oo/service/impl/NotifcacaoPushNotificacion.dart';
import 'package:meu_app_oo/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao{

  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa){
    switch(pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotificacion();
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
      default:
        break;
    }
    if (notificacao != null) {
    notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}