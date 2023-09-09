-- Handle the /x command for tweets
if Config.XCommandEnabled then
    RegisterCommand('x', function(source, args)
        local playerName = GetPlayerName(source)
        local username, message = nil, ""

        if args[1] and string.sub(args[1], 1, 1) == "@" then
            username = string.sub(args[1], 2) -- Remove "@" from the username
            table.remove(args, 1) -- Remove the username from the arguments
            message = table.concat(args, " ") -- Combine the rest of the arguments into a message
        else
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.XIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> <b>{0}</b> <br> {1}</div>',
                args = { playerName, "Invalid tweet format. Use /x @Username Post Details" }
            })
            return
        end

        if not username or username == "" or not message or message == "" then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.XIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> <b>{0}</b> <br> {1}</div>',
                args = { playerName, "Invalid tweet format. Use /x @Username Post Details" }
            })
        else
            local isVerified = false
            if IsPlayerAceAllowed(source, Config.VerificationAcePerm) then
                isVerified = true
            end

            local verificationMark = ""
            if isVerified then
                verificationMark = string.format('<a href="%s"><img src="%s" style="width: 20px; height: 20px; vertical-align: middle;"></a> ', Config.VerificationImage, Config.VerificationImage)
            end

            local tweetText = string.format('<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.XIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> %s<b>%s</b> <br> %s</div>', verificationMark, "@" .. username, message)
            TriggerClientEvent('chat:addMessage', -1, {
                template = tweetText,
                args = { username, message }
            })

            -- Send to Discord webhook
            sendToDiscord(username, message, tonumber(Config.DefaultTweetColor, 16))
        end
    end)

    -- Add a suggestion for the /x command to the chat
    TriggerEvent('chat:addSuggestion', '/x', 'Send a tweet with a username and message.', {
        { name = "username", help = "The username for the tweet." },
        { name = "message", help = "The message you want to tweet." }
    })
end

-- Handle the /fbmarket command
if Config.FBMarketCommandEnabled then
    RegisterCommand('fbmarket', function(source, args)
        local playerName = GetPlayerName(source)
        local message = table.concat(args, " ")

        if not message or message == "" then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.FBMarketIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> <b>{0}</b> <br> {1}</div>',
                args = { playerName, "Invalid fbmarket format. Use /fbmarket Your Market Message" }
            })
        else
			local fbmarketText = string.format('<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.FBMarketIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> %s %s</div>', playerName, ":" .. message)
            TriggerClientEvent('chat:addMessage', -1, {
                template = fbmarketText,
                args = { playerName, message }
            })

            -- Send message to Discord webhook for /fbmarket
            sendFbmarketToDiscord(playerName, message, tonumber(Config.FBMarketColor, 16), "FB Market", Config.FBMarketIconURL)
        end
    end)

    -- Add a suggestion for the /fbmarket command to the chat
    TriggerEvent('chat:addSuggestion', '/fbmarket', 'Send a message to the FB Market.', {
        { name = "message", help = "The message you want to send." }
    })
end

-- Handle the /news command
if Config.NewsCommandEnabled then
    RegisterCommand('news', function(source, args)
        local playerName = GetPlayerName(source)
        local message = table.concat(args, " ")

        if not message or message == "" then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.NewsIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> <b>{0}</b> <br> {1}</div>',
                args = { playerName, "Invalid news format. Use /news Your News Headline" }
            })
        else
            local newsText = string.format('<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.NewsIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> %s %s</div>', playerName, ":" .. message)
            TriggerClientEvent('chat:addMessage', -1, {
                template = newsText,
                args = { playerName, message }
            })

            -- Send message to Discord webhook for /news
            sendNewsToDiscord(playerName, message, tonumber(Config.NewsColor, 16), "News", Config.NewsIconURL)
        end
    end)

    -- Add a suggestion for the /news command to the chat
    TriggerEvent('chat:addSuggestion', '/news', 'Send a news headline.', {
        { name = "message", help = "The news headline you want to send." }
    })
end

-- Handle the /dot command
if Config.DotCommandEnabled then
    RegisterCommand('dot', function(source, args)
        local playerName = GetPlayerName(source)
        local message = table.concat(args, " ")

        if not message or message == "" then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.DotIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> <b>{0}</b> <br> {1}</div>',
                args = { playerName, "Invalid dot format. Use /dot Your Dot Message" }
            })
        else
            local dotText = string.format('<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 0.8); border-radius: 3px;"><img src="' .. Config.DotIconURL .. '" style="width: 30px; height: 30px; vertical-align: middle;"> %s %s</div>', playerName, ":" ..  message)
            TriggerClientEvent('chat:addMessage', -1, {
                template = dotText,
                args = { playerName, message }
            })

            -- Send message to Discord webhook for /dot
            sendDotToDiscord(playerName, message, tonumber(Config.DotColor, 16), "Dot", Config.DotIconURL)
        end
    end)

    -- Add a suggestion for the /dot command to the chat
    TriggerEvent('chat:addSuggestion', '/dot', 'Send a Dot message.', {
        { name = "message", help = "The Dot message you want to send." }
    })
end



-- Function to send a Discord embed with a webhook for /x, /fbmarket, /news, and /dot
function sendToDiscord(username, message, color)
    local embed = {
        {
            title = "@" .. username,
            description = message,
            color = color,
            footer = {
                text = "Created by 5M-CodeX" -- Replace with your Discord username and tag
            },
            author = {
                name = "New X Post",
                icon_url = Config.XIconURL
            }
        }
    }

    local payload = {
        embeds = embed
    }

    PerformHttpRequest(Config.DiscordWebhook, function(err, text, headers)
        if err == 200 then
            print("X post sent to Discord successfully!")
        end
    end, 'POST', json.encode(payload), { ["Content-Type"] = "application/json" })
end

-- Function to send a Discord embed with a webhook for /fbmarket
function sendFbmarketToDiscord(playerName, message, color)
    local embed = {
        {
            title = "@" .. playerName,
            description = message,
            color = color,
            footer = {
                text = "Created by 5M-CodeX" -- Replace with your Discord username and tag
            },
            author = {
                name = "New FB Market Post",
                icon_url = Config.FBMarketIconURL
            }
        }
    }

    local payload = {
        embeds = embed
    }

    PerformHttpRequest(Config.FBMarketWebhook, function(err, text, headers)
        if err == 200 then
            print("FB Market post sent to Discord successfully!")
        end
    end, 'POST', json.encode(payload), { ["Content-Type"] = "application/json" })
end

-- Function to send a Discord embed with a webhook for /news
function sendNewsToDiscord(playerName, message, color)
    local embed = {
        {
            title = "@" .. playerName,
            description = message,
            color = color,
            footer = {
                text = "Created by 5M-CodeX" -- Replace with your Discord username and tag
            },
            author = {
                name = "New News Post",
                icon_url = Config.NewsIconURL
            }
        }
    }

    local payload = {
        embeds = embed
    }

    PerformHttpRequest(Config.NewsWebhook, function(err, text, headers)
        if err == 200 then
            print("News post sent to Discord successfully!")
        end
    end, 'POST', json.encode(payload), { ["Content-Type"] = "application/json" })
end

-- Function to send a Discord embed with a webhook for /dot
function sendDotToDiscord(playerName, message, color)
    local embed = {
        {
            title = "@" .. playerName,
            description = message,
            color = color,
            footer = {
                text = "Created by 5M-CodeX" -- Replace with your Discord username and tag
            },
            author = {
                name = "New Dot Post",
                icon_url = Config.DotIconURL
            }
        }
    }

    local payload = {
        embeds = embed
    }

    PerformHttpRequest(Config.DotWebhook, function(err, text, headers)
        if err == 200 then
            print("Dot post sent to Discord successfully!")
        end
    end, 'POST', json.encode(payload), { ["Content-Type"] = "application/json" })
end
