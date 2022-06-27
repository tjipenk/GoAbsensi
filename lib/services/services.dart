import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_database/firebase_database.dart';
import 'package:presensi_pplh/models/models.dart';
import 'package:presensi_pplh/extensions/extensions.dart';
import 'package:imei_plugin/imei_plugin.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';

part 'auth_services.dart';
part 'user_services.dart';
part 'absent_services.dart';
part 'presence_services.dart';
part 'history_services.dart';
part 'letter_services.dart';
