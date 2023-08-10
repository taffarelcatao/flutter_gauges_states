// ignore_for_file: public_member_api_docs, sort_constructors_first

class ImcState {
  final double? imc;
  ImcState({
    this.imc,
  });
}

class ImcStateLoadin extends ImcState {}

class ImcStateError extends ImcState {
  String messege;
  ImcStateError({
    required this.messege,
  });
}
