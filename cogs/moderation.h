#include "../utils.h"


class BanCommand: public Command {
    public:
        MyClientClass *client;
        BanCommand(MyClientClass* client): 
            Command("ban", "Bans a user") {
                this->client = client;
                client->commands["ban"] = this;
            }
        void execute(SleepyDiscord::Message message, std::vector<std::string> args) override {
            SleepyDiscord::User user;
            try {
                user = convertToUser(client, args[0]);
            } catch (std::invalid_argument) {
                client->sendMessage(message.channelID, "Please provide a valid user.");
                return;
            } catch (std::exception) {
                client->sendMessage(message.channelID, "Please provide a valid user.");
                return;
            }
            client->banMember(
                message.serverID,
                user.ID,
                7,
                "You have been banned from the server."
            );
            client->sendMessage(
                message.channelID, 
                mentionUser(message.author) + " Banned " + mentionUser(user) + " with a large trout!"
            );
        }
};