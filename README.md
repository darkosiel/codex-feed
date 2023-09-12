# CodeX X Feed

![CodeX X Feed](https://github.com/5M-CodeX/codex-feed/assets/112611821/ec0386c8-d75f-4cde-be86-a67dd6d503bf)

Welcome to CodeX X Feed, a versatile resource that enhances your roleplaying experience and Twitter-like interactions within your FiveM server. With CodeX X Feed, players can engage in immersive roleplaying actions and share their thoughts using a custom chat command. Additionally, it seamlessly integrates with Discord, allowing you to mirror your in-game tweets in a Discord server for a broader audience.

This feature not only enhances the roleplaying experience by making messages more immersive but also makes it easier for players to identify and engage with in-game interactions. Each message includes chat tags and icons, adding a unique touch to every conversation.

With chat bubbles, your server's communication becomes more engaging and dynamic, contributing to a more immersive and enjoyable roleplaying environment.

## Features

- **Tweet in-Game and on Discord**: Use the `/x` command to compose and share tweets with your fellow players. This command allows you to craft custom messages, and they will be visible both in-game and on your linked Discord server.

- **Discord Webhook Integration**: CodeX X Feed includes Discord webhook integration, making it easy to relay your tweets to a Discord channel of your choice. Keep your community engaged and informed, whether they're in the game or on Discord.

- **Verification Marks**: Distinguish verified users with a prestigious verification mark displayed next to their username in tweets. Show your appreciation for trusted members of your community.

- **Customize Your Tweet Format**: Tailor the appearance of your tweets to your liking. CodeX X Feed provides customizable tweet formats, ensuring your tweets match your server's theme and style.

- **Logo Support**: Inject character and branding into your tweets by adding a logo. Set a custom logo URL in the configuration, and it will be displayed alongside your tweets.

- **News Updates**: Share news headlines and updates with the `/news` command. Keep your community informed about the latest news and events on your server.

- **Dot Messages**: Use the `/dot` command to send Dot messages—short, impactful messages within your community.

- **Interactive Roleplay Commands**:
    - `/do`: Roleplay description command.
    - `/me`: Roleplay action command.
    - `/dispatch`: Send dispatch messages.
    - `/schat`: Staff chat for administrators.
    - `/gme`: Global me command for all players.

## Configuration

The `config.lua` file contains various settings for CodeX X Feed. Here's a detailed explanation of the configuration:

```lua
Config = {
    -- Configuration for chat tags
    ChatTags = {
        -- Define chat tags for various roles with permissions and image URLs.
        -- Example:
        {
            Tag = "Owner",
            Permission = "Owner.permission",
            ImageUrl = "https://i.imgur.com/J0gMV5u.png"
        },
        -- Add more chat tags as needed.
    },

    -- Staff Chat ACE Permission
    StaffChat = "admin.permission",

    -- Proximity Chat Distance
    ProxDist = 10, -- Set your proximity distance here (adjust as needed)

    -- Custom URLs for commands
    URLs = {
        Dispatch = "https://i.imgur.com/adrNj4A.png",
        Me = "https://i.imgur.com/bONDaMZ.png",
        Do = "https://i.imgur.com/gnHegRk.png",
        Gm = "url_for_gm_image.png",
        DarkWeb = "https://i.imgur.com/byJ48nh.png",
        -- Add URLs for other commands as needed.
    },

    -- Default tag for players without permissions
    DefaultTag = {
        Tag = "Default",
        ImageUrl = "https://i.imgur.com/dJngqpD.png"
    },

    -- Ingame Chat Settings
    x = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;">%s %s<b>%s</b><br>%s</div>',

    -- Discord Webhook Settings
    DiscordWebhook = "https://discord.com/api/webhooks/your_webhook_url_here",
    ServerName = "X Feed",

    -- /x Command Settings
    XCommandEnabled = true,
    VerificationAcePerm = "verify.verified",
    DefaultTweetColor = "#FFFFFF",
    XIconURL = "https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0.jpg",

    -- Colors (for tweets, messages, etc.)
    VerifiedColor = "#0099FF",
    InvalidFormatColor = "#FF0000",

    -- Images (for tweets, icons, etc.)
    DefaultTweetImage = "https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0.jpg",
    VerificationImage = "https://i.imgur.com/VZ2JNy7.png",

    -- /fbmarket Command Settings
    FBMarketCommandEnabled = true,
    FBMarketWebhook = "https://discord.com/api/webhooks/your_webhook_url_here",
    FBMarketColor = "#00FF00",
    FBMarketIconURL = "https://i.imgur.com/S47mO27.png",

    -- /news Command Settings
    NewsCommandEnabled = true,
    NewsWebhook = "https://discord.com/api/webhooks/your_webhook_url_here",
    NewsColor = "#FFA500",
    NewsIconURL = "https://static.wikia.nocookie.net/gtawiki/images/8/83/Weazel_News.png/revision/latest?cb=20120708181541",

    -- /dot Command Settings
    DotCommandEnabled = true,
    DotWebhook = "https://discord.com/api/webhooks/your_webhook_url_here",
    DotColor = "#FFFF00",
    DotIconURL = "https://pbs.twimg.com/profile_images/932249208433848321/GmIum3vp_400x400.jpg",

    -- /insta Command Settings
    InstaCommandEnabled = true,
    InstaWebhook = "https://discord.com/api/webhooks/your_webhook_url_here",
    InstaColor = "#FFA500",
    InstaIconURL = "https://i.imgur.com/Bmigbv5.png",
}
```

Please replace ``your_webhook_url_here`` with the actual webhook URLs you intend to use.

## Installation

- Download the resource files from GitHub.
- Place the codex-feed folder into your FiveM server's resources directory.
- Configure the config.lua file to your preferences.
- Add ensure codex-feed to your server.cfg to ensure the resource is started when your server starts.
- Start or restart your FiveM server.

## Usage

-Use the /x, /news, /dot, /fbmarket, /insta, /do, /me, /dispatch, /schat, and /gme commands to send messages, updates, and roleplay interactions within your server.
Customize tweet appearance, message formats, and other settings in
