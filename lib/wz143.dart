import 'package:nyxx/nyxx.dart';

import 'package:wz143/utils/config.dart';

void main() async {
  final client = await Nyxx.connectGateway(
    token,
    intents,
    options: GatewayClientOptions(plugins: [logging, cliIntegration]),
  );

  final wz = await client.users.fetchCurrentUser();
  client.updatePresence(status);

  client.onMessageCreate.listen((event) async {
    if (event.mentions.contains(wz)) {
      await event.message.channel.sendMessage(
          MessageBuilder(content: 'owo', replyId: event.message.id, tts: true));
    }
  });
}
