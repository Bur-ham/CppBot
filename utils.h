#pragma once

#include <sstream>
#include <string>
#include <vector>

#include "sleepy_discord/sleepy_discord.h"

const char prefix = '!';


std::vector<std::string> split(std::string str, char delimiter) {
    std::vector<std::string> internal;
    std::stringstream ss(str);
    std::string tok;
    while(getline(ss, tok, delimiter)) {
        internal.push_back(tok);
    }
    return internal;
}

std::string removeChar(std::string str, std::initializer_list<char> chars) {
    for (char c : chars) {
        str.erase(std::remove(str.begin(), str.end(), c), str.end());
    }
    return str;
}


class Command {
    public:
        Command(std::string name, std::string description) {
            this->name = name;
            this->description = description;
        }
        std::string name;
        std::string description;
        virtual void execute(SleepyDiscord::Message, std::vector<std::string> args) = 0;
};

class MyClientClass: 
    public SleepyDiscord::DiscordClient {
        public:

            std::map<std::string, Command*> commands;
            using SleepyDiscord::DiscordClient::DiscordClient;
	        void onMessage(SleepyDiscord::Message message) override {
                
		        if (message.content[0] == prefix) {
                    std::vector<std::string> args;
                    std::string command = message.content.substr(1);

                    if (command.length() == 0) {
                        return;
                    }

                    try {
                        args = split(command, ' ');
                        command = args[0];
                    } catch (std::exception e) {
                        return;
                    }
                    args.erase(args.begin());

                    if (commands.find(command) != commands.end()) {
                        commands[command]->execute(message, args);
                    }
                }
	        }
};

SleepyDiscord::User convertToUser(MyClientClass* client, std::string userID) {
    userID = removeChar(userID, {'@', '<', '>'});
    long userId = std::stol(userID);
    SleepyDiscord::User user = client->getUser(userId);
    return user;
}

std::string mentionUser(SleepyDiscord::User user) {
    return "<@" + user.ID.string() + ">";
}