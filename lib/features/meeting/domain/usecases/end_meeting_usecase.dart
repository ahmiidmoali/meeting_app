import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';
import 'package:meeting_app/features/meeting/domain/repository/meeting_repository.dart';

class EndMeetingUsecase {
  final MeetingRepository repository;

  const EndMeetingUsecase({required this.repository});
  Future<void> call(MeetingEntity meeting) async {
    return await repository.endMeeting(meeting);
  }
}
