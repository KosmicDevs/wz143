import 'package:nyxx/nyxx.dart';

void main() async {
  final client = await Nyxx.connectGateway(
    '',
    GatewayIntents.all,
    options: GatewayClientOptions(plugins: [logging, cliIntegration]),
  );

  final wz = await client.users.fetchCurrentUser();

  client.onMessageCreate.listen((event) async {
    if (event.mentions.contains(wz)) {
      await event.message.channel.sendMessage(
          MessageBuilder(content: 'owo', replyId: event.message.id, tts: true));
    }
  });
}
