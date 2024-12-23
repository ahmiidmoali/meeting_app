import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';
import 'package:meeting_app/features/meeting/domain/repository/meeting_repository.dart';

class SaveMeetingHistoryUsecase {
  final MeetingRepository repository;

  const SaveMeetingHistoryUsecase({required this.repository});
  Future<void> call(MeetingEntity meeting) async {
    return await repository.saveMeetingHistory(meeting);
  }
}
