#include <map>

#include "sleepy_discord/sleepy_discord.h"

#include "utils.h"
#include "cogs/fun.h"
#include "cogs/moderation.h"

/* 
    #include "dotenv.h"
    Dotenv isn't working for some reason. 
*/

const std::string TOKEN = "YOUR_BOT_TOKEN";


class HelloCommand: public Command {
    public:
        MyClientClass *client;
        HelloCommand(MyClientClass* client): Command("hello", "Says hello") {
            this->client = client;
            client->commands["hello"] = this;
        }
        void execute(SleepyDiscord::Message message, std::vector<std::string> args) {
            client->sendMessage(message.channelID, "Hello, " + message.author.username + "!");
        }
};


int main() {
	MyClientClass client(TOKEN, SleepyDiscord::USER_CONTROLED_THREADS);

    HelloCommand command1 = HelloCommand(&client);
    KissCommand command2 = KissCommand(&client);
    SlapCommand command3 = SlapCommand(&client);

    BanCommand command4 = BanCommand(&client);

	client.setIntents(SleepyDiscord::Intent::SERVER_MESSAGES);
	client.run();
}