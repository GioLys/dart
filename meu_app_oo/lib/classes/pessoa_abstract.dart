import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = ""; //propriedade da classe
  String _endereco = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  //underline sigifica private

  void setNome(String nome){
    _nome = nome; //this é o contexto atual, não é usado quando tem underline
    //primeiro nome = prop da classe
    //segundo nome = parametro
  }

  String getNome(){
    return _nome;
  }

  void setEndereco(String endereco){
    _endereco = endereco;
  }

  String getEndereco(){
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao){
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao(){
    return _tipoNotificacao;
  }

  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}){
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;

  }

  @override
  String toString(){
    return {"Nome": _nome, "Endereco": _endereco, "Tipo Notificação": _tipoNotificacao}.toString();

  }
}
