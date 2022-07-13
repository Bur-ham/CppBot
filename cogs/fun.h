#include "../utils.h"


class SlapCommand: public Command {
    public:
        MyClientClass *client;
        SlapCommand(MyClientClass* client): Command("hello", "Says hello") {
            this->client = client;
            client->commands["slap"] = this;
        }
        void execute(SleepyDiscord::Message message, std::vector<std::string> args) override {
            SleepyDiscord::User user;
            try {
                user = convertToUser(client, args[0]);
            } catch (std::invalid_argument e) {
                client->sendMessage(message.channelID, "Please provide a valid user.");
                return;
            }
            client->sendMessage(
                message.channelID, 
                mentionUser(message.author) + " Slaps " + mentionUser(user) + " with a large trout!"
            );
        }
};


class KissCommand: public Command {
    public:
        MyClientClass *client;
        KissCommand(MyClientClass* client): Command("hello", "Says hello") {
            this->client = client;
            client->commands["kiss"] = this;
        }
        void execute(SleepyDiscord::Message message, std::vector<std::string> args) {
            SleepyDiscord::User user;
            try {
                user = convertToUser(client, args[0]);
            } catch (std::invalid_argument e) {
                client->sendMessage(message.channelID, "Please provide a valid user.");
                return;
            }
            client->sendMessage(
                message.channelID, 
                mentionUser(message.author) + " Kisses " + mentionUser(user) + " with a large trout!"
            );
        }
};

