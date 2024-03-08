import 'package:nyxx/nyxx.dart';
import 'package:nyxx_commands/nyxx_commands.dart';

ChatCommand ping = ChatCommand(
  'ping',
  'pon',
  id('ping', (InteractionChatContext context) async {
    final color = DiscordColor.fromRgb(255, 255, 255);

    final embed = EmbedBuilder()
      ..color = color
      ..fields = [EmbedFieldBuilder(name: 'fe', value: '1', isInline: true)];

    await context.respond(MessageBuilder(embeds: [embed]));
  }),
);
