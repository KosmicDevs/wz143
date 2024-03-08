import 'package:dotenv/dotenv.dart';
import 'package:nyxx/nyxx.dart';

/// Envrionment Variables
var env = DotEnv(includePlatformEnvironment: true)..load();
final token = env['TOKEN']!;
final prefix = env['PREFIX']!;
final ownerId = env['OWNER_ID']!;
final intents = GatewayIntents.all;

/// wz status
final activity = [
  ActivityBuilder(
      name: 'wz!help || @wz143',
      type: ActivityType.listening,
      url: Uri.parse('https://github.com/KosmicDevs/wz143')),

  /// why the flip is this a list.
];
final status = PresenceBuilder(
    status: CurrentUserStatus.idle,
    activities: activity,
    isAfk: false,
    since: DateTime.now());
