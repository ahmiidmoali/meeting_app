import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';

abstract class MeetingRepository {
  Future<void> startMeeting(MeetingEntity meeting);
  Future<void> createMeeting(MeetingEntity meeting);
  Future<void> endMeeting(MeetingEntity meeting);
  Future<void> saveMeetingHistory(MeetingEntity meeting);
  Future<void> getMeetingChannelId(String id);
}
//start_meeting_usecase create_meeting_usecase end_meeting_usecase save_meeting_history_usecase.dart get_meeting_channel_id_usecase.dart