import 'package:meeting_app/features/meeting/data/data_sources/meeting_remote_data_source.dart';
import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';
import 'package:meeting_app/features/meeting/domain/repository/meeting_repository.dart';

class MeetingRepositpryImp extends MeetingRepository {
  final MeetingRemoteDataSource remoteDataSource;

  MeetingRepositpryImp({required this.remoteDataSource});
  @override
  Future<void> endMeeting(MeetingEntity meeting) async =>
      remoteDataSource.endMeeting(meeting);

  @override
  Future<void> getMeetingChannelId(String id) async =>
      remoteDataSource.getMeetingChannelId(id);

  @override
  Future<void> saveMeetingHistory(MeetingEntity meeting) =>
      remoteDataSource.saveMeetingHistory(meeting);

  @override
  Future<void> startMeeting(MeetingEntity meeting) async =>
      remoteDataSource.startMeeting(meeting);
}
