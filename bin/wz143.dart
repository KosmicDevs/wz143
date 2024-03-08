import 'package:nyxx/nyxx.dart';
import 'package:nyxx_commands/nyxx_commands.dart';
import 'package:wz143/wz143.dart';

void main() async {
  final client = await Nyxx.connectGateway(
    token,
    intents,
  );

  final commands = CommandsPlugin(
      prefix: mentionOr((_) => prefix),
      guild: Snowflake(1164458794244395028),
      options: CommandsOptions(logErrors: true));

  commands.addCommand(ping);

  client.updatePresence(status);

  client.onMessageCreate.listen((event) async {
    if (event.mentions.contains(client.user)) {
      await event.message.channel.sendMessage(
          MessageBuilder(content: 'owo', replyId: event.message.id, tts: true));
    }
  });
  await client.users.fetchCurrentUser();
}
