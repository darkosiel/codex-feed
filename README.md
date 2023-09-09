# CodeX X Feed
![Untitled (960 × 540 px) (8)](https://github.com/5M-CodeX/codex-feed/assets/112611821/4b0eb33f-b804-4934-8710-d6d723c8b667)

Welcome to CodeX X Feed, a versatile resource that enhances your roleplaying experience and Twitter-like interactions within your FiveM server. With CodeX X Feed, players can engage in immersive roleplaying actions and share their thoughts using a custom chat command. Additionally, it seamlessly integrates with Discord, allowing you to mirror your in-game tweets in a Discord server for a broader audience.

## Features

- **Tweet in-Game and on Discord**: Use the `/x` command to compose and share tweets with your fellow players. This command allows you to craft custom messages, and they will be visible both in-game and on your linked Discord server.

- **Discord Webhook Integration**: CodeX X Feed includes Discord webhook integration, making it easy to relay your tweets to a Discord channel of your choice. Keep your community engaged and informed, whether they're in the game or on Discord.

- **Verification Marks**: Distinguish verified users with a prestigious verification mark displayed next to their username in tweets. Show your appreciation for trusted members of your community.

- **Customize Your Tweet Format**: Tailor the appearance of your tweets to your liking. CodeX X Feed provides customizable tweet formats, ensuring your tweets match your server's theme and style.

- **Logo Support**: Inject character and branding into your tweets by adding a logo. Set a custom logo URL in the configuration, and it will be displayed alongside your tweets.

## Commands

### /x Command

The `/x` command allows you to create and send tweets in the game. Tweets can be customized with the following format:
`/x @Username Your Tweet Message`
You can use this command to share market-related updates and information.

### /news Command

With the `/news` command, you can share news headlines and updates. Use it like this:
`/news Your News Headline`
Keep your community informed about the latest news and events on your server.

### /dot Command

The `/dot` command allows you to send Dot messages. Use it as follows:
`/dot Your Dot Message`
Use Dot messages to convey short, impactful messages within your community.

## Configuration

CodeX X Feed is highly customizable through its configuration file, `config.lua`. Here are some of the configurable options:
- `XIconURL`: Set the URL for the X Feed icon.
- `DefaultTweetColor`: Define the default color for tweets.
- `VerificationAcePerm`: Specify the ACE permission for verification.
- `VerifiedColor`: Set the color for verified users.
- `InvalidFormatColor`: Define the color for invalid tweet formats.
- `DiscordWebhook`: Provide the Discord webhook URL for integration.
- `ServerName`: Customize your server's name for display.
- `FBMarketCommandEnabled`: Enable or disable the `/fbmarket` command.
- `FBMarketColor`: Set the color for FB Market messages.
- `FBMarketIconURL`: Specify the URL for the FB Market icon image.
- `NewsCommandEnabled`: Enable or disable the `/news` command.
- `NewsColor`: Set the color for news messages.
- `NewsIconURL`: Specify the URL for the news icon image.
- `DotCommandEnabled`: Enable or disable the `/dot` command.
- `DotColor`: Set the color for Dot messages.
- `DotIconURL`: Specify the URL for the Dot icon image.
Review the `config.lua` file to tailor the resource to your server's specific needs.

## Installation

1. Download the resource files from 
2. Place the `codex-feed` folder into your FiveM server's resources directory.
3. Configure the `config.lua` file to your preferences.
4. Add `ensure codex-feed` to your server.cfg to ensure the resource is started when your server starts.
5. Start or restart your FiveM server.

## Usage

- Use the `/x`, `/fbmarket`, `/news`, and `/dot` commands to send messages and updates within your server.

- Customize tweet appearance and other settings in the configuration file.

- Enjoy immersive roleplaying interactions and keep your community engaged with Discord integration.

## Credits

- This resource was created by [TheStoicBear](https://github.com/thestoicbear)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


