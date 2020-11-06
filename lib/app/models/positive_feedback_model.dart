import 'package:flutter/material.dart';
import 'package:updoctor/app/models/client_model.dart';

class PositiveFeedback {
  final Client client;
  final DateTime dateTime;
  final String comment;
  final String specialization;

  const PositiveFeedback(
      {this.client, this.dateTime, this.comment, this.specialization});
}
