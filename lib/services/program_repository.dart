import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/program.dart';

class ProgramRepository {
  Future<List<Program>> loadPrograms() async {
    final jsonString = await rootBundle.loadString('assets/data/programs.json');
    final jsonList = jsonDecode(jsonString) as List<dynamic>;

    return jsonList
        .map((item) => Program.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
