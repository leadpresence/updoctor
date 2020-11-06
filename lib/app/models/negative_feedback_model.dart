import 'package:flutter/material.dart';
import 'package:updoctor/app/models/client_model.dart';

class NegativeFeedback {
  final Client client;
  final DateTime dateTime;
  final String comment;
  final String specialization;

  const NegativeFeedback(
      {this.client, this.dateTime, this.comment, this.specialization});
}
