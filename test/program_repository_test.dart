import 'package:excelerate_internship/services/program_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('loads all programs from the local JSON asset', () async {
    final programs = await ProgramRepository().loadPrograms();

    expect(programs, hasLength(6));
    expect(
      programs.every(
        (program) =>
            program.title.isNotEmpty &&
            program.description.isNotEmpty &&
            program.heroImageUrl.isNotEmpty,
      ),
      isTrue,
    );
    expect(programs.first.rating, 4.8);
    expect(programs.first.cohortSize, 30);
  });
}
