# VK and Telegram echo-bot: trial-bot-concurrent

Concurrent wrapper around [Telegram](https://github.com/unam3/trial-bot) and [VK](https://github.com/unam3/trial-bot-vk) echo bots.

## Installation and usage

Clone this repository:

```
git clone https://github.com/unam3/trial-bot-concurrent.git
cd trial-bot-concurrent/
git submodule update --init --depth 1
```
or
```
git clone --recurse-submodules https://github.com/unam3/trial-bot-concurrent.git
```

To use bot one need to install [stack](https://docs.haskellstack.org/en/stable/README/#how-to-install) and then run in terminal from project directory:

```
stack build
```

All configuration is done by nine parameters in trial-bot-concurrent launch command (run from project directory):

```
stack exec trial-bot-concurrent-exe vkToken vkGroupId vkHelpMsg vkRepeatMsg vkEchoRepeatNumberStr tgToken tgHelpMsg tgRepeatMsg tgEchoRepeatNumber
```
where
- vkToken — [community token](https://vk.com/dev/access_token?f=2.%20Community%20Token);
- vkGroupId — community ID;
- vkHelpMsg — string, which bot will send to the `/help` message;
- vkRepeatMsg — string, which bot will send to the `/repeat` message with currently set repeat number;
- vkEchoRepeatNumberStr - number from 1 to 5 (inclusive) of repeats to one message;
- [tgToken](https://core.telegram.org/bots/api#authorizing-your-bot);
- tgHelpMsg — string, which bot will send to the `/help` message;
- tgRepeatMsg — string, which bot will send to the `/repeat` message with currently set repeat number;
- tgEchoRepeatNumberStr - number from 1 to 5 (inclusive) of repeats to one message.

Example of launch command in Linux environment:

```
stack exec trial-bot-concurrent-exe "123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11" "123456789" "help msg" "repeat msg" 1  "123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11" "help msg" "repeat msg" 1
```
