Config = {
    -- Configuration for chat tags
    ChatTags = {
        {
            Tag = "Owner",
            Permission = "Owner.permission",
            ImageUrl = "https://i.imgur.com/J0gMV5u.png"
        },
        {
            Tag = "Admin",
            Permission = "Admins.permission",
            ImageUrl = "https://i.imgur.com/0PBfTP4.png"
        },
        {
            Tag = "Mod",
            Permission = "Mod.permission",
            ImageUrl = "https://i.imgur.com/2fr5CFe.png"
        },
        {
            Tag = "Dev",
            Permission = "Dev.permission",
            ImageUrl = "https://i.imgur.com/gmrSFsp.png"
        },
		{
            Tag = "LSPD",
            Permission = "LSPD.permission",
            ImageUrl = "https://i.imgur.com/ktG7hL0.png"
        },
		{
            Tag = "LSFD",
            Permission = "LSFD.permission",
            ImageUrl = "https://i.imgur.com/TFf4eT2.png"
        },
        {
            Tag = "SAHP",
            Permission = "SAHP.permission",
            ImageUrl = "https://i.imgur.com/rX4OXwu.png"
        },
		{
            Tag = "BCSO",
            Permission = "BCSO.permission",
            ImageUrl = "https://i.imgur.com/HrxWhLW.png"
        },
        {
            Tag = "Dispatch",
            Permission = "com.permission",
            ImageUrl = "https://i.imgur.com/adrNj4A.png"
        },
        {
            Tag = "Civillian",
            Permission = "CIV.permission",
            ImageUrl = "admin.png"
        },
		{
            Tag = "Tow",
            Permission = "TOW.permission",
            ImageUrl = "https://i.imgur.com/FzqqRNC.png"
        }
    },

    -- Configuration for staff chat
    StaffChat = "admin.permission",
	ProxDist = 10, -- Set your proximity distance here (adjust as needed)

    -- Custom URLs for commands
    URLs = {
        Dispatch = "https://i.imgur.com/adrNj4A.png",
        Me = "https://i.imgur.com/bONDaMZ.png",
        Do = "https://i.imgur.com/gnHegRk.png",
        Gm = "url_for_gm_image.png",
        DarkWeb = "https://i.imgur.com/byJ48nh.png"
    },

    -- Default tag for players without permissions
    DefaultTag = {
        Tag = "Default",
        ImageUrl = "https://i.imgur.com/dJngqpD.png" -- Provide the URL for the default image
    },

    -- Ingame Chat Settings
    x = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="%s" style="width: 30px; height: 30px; vertical-align: middle;"> %s<b>%s</b> <br> %s</div>',
    fbmarket = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="%s" style="width: 30px; height: 30px; vertical-align: middle;"> %s<b>%s</b> <br> %s</div>',
    news = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="%s" style="width: 30px; height: 30px; vertical-align: middle;"> %s<b>%s</b> <br> %s</div>',
    dot = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="%s" style="width: 30px; height: 30px; vertical-align: middle;"> %s<b>%s</b> <br> %s</div>',
	insta = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="%s" style="width: 30px; height: 30px; vertical-align: middle;"> %s<b>%s</b> <br> %s</div>',
    

    -- Discord Webhook Settings
    DiscordWebhook = "https://discord.com/api/webhooks/1151247837192007813/R32B_4j28601p5DmQ4oNoA_DoX5XFGHsPBFCLnY3kYu0pGkInnzYCn71TInZUvXlzlel",
    ServerName = "X Feed",

    -- /x Command Settings
    XCommandEnabled = true,  -- Set to false to disable the /x command
    VerificationAcePerm = "verify.verified", -- ACE permission for verification
    DefaultTweetColor = "#FFFFFF",  -- Default tweet color (hex color code)
    XIconURL = "https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0.jpg",

    -- Colors
    VerifiedColor = "#0099FF",  -- Color for verified users (hex color code)
    InvalidFormatColor = "#FF0000",  -- Color for invalid tweet format (hex color code)

    -- Images
    DefaultTweetImage = "https://static.dezeen.com/uploads/2023/07/x-logo-twitter-elon-musk_dezeen_2364_col_0.jpg",
    VerificationImage = "https://i.imgur.com/VZ2JNy7.png", -- Verification mark image

    -- /fbmarket Command Settings
    FBMarketCommandEnabled = true,  -- Set to false to disable the /fbmarket command
    FBMarketWebhook = "https://discord.com/api/webhooks/1151247837192007813/R32B_4j28601p5DmQ4oNoA_DoX5XFGHsPBFCLnY3kYu0pGkInnzYCn71TInZUvXlzlel",
    FBMarketColor = "#00FF00",  -- Color for FB Market messages (hex color code)
    FBMarketIconURL = "https://i.imgur.com/S47mO27.png", -- FB Market icon image

    -- /news Command Settings
    NewsCommandEnabled = true,  -- Set to false to disable the /news command
    NewsWebhook = "https://discord.com/api/webhooks/1151247837192007813/R32B_4j28601p5DmQ4oNoA_DoX5XFGHsPBFCLnY3kYu0pGkInnzYCn71TInZUvXlzlel",
    NewsColor = "#FFA500",  -- Color for news messages (hex color code)
    NewsIconURL = "https://static.wikia.nocookie.net/gtawiki/images/8/83/Weazel_News.png/revision/latest?cb=20120708181541", -- News icon image

    -- /dot Command Settings
    DotCommandEnabled = true,  -- Set to false to disable the /dot command
    DotWebhook = "https://discord.com/api/webhooks/1151247837192007813/R32B_4j28601p5DmQ4oNoA_DoX5XFGHsPBFCLnY3kYu0pGkInnzYCn71TInZUvXlzlel",
    DotColor = "#FFFF00",  -- Color for Dot messages (hex color code)
    DotIconURL = "https://pbs.twimg.com/profile_images/932249208433848321/GmIum3vp_400x400.jpg", -- Dot icon image

    -- /insta Command Settings
    InstaCommandEnabled = true,  -- Set to false to disable the /insta command
    InstaWebhook = "https://discord.com/api/webhooks/1151247837192007813/R32B_4j28601p5DmQ4oNoA_DoX5XFGHsPBFCLnY3kYu0pGkInnzYCn71TInZUvXlzlel",
    InstaColor = "#FFA500",  -- Color for news messages (hex color code)
    InstaIconURL = "https://i.imgur.com/Bmigbv5.png", -- Instagram icon image
}
