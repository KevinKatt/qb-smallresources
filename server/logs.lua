local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = '',
    ['testwebhook'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['playermoney'] = 'https://discord.com/api/webhooks/956631358707490926/F_wQIbIe6SlqHguWsguJWZxSPUrY4-otfgnWw7d9VaOJ0aDL27AQjgdq7KbcsBw_g38A',
    ['playerinventory'] = 'https://discord.com/api/webhooks/956631847616520252/xkH777Cr0M8hv9qOXARIY4NZnvRmEeMXmNWL-j_hJWXp7OW6fYgOHEt0xIBGydFpN1iQ',
    ['robbing'] = 'https://discord.com/api/webhooks/956630130371985428/vXuqYTF00Wmna1ofifq-9uncSHMxg40cU-uNJlK8i6WaFjI_fYw0n-HtWz5bDWZrZxUC',
    ['cuffing'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['drop'] = 'https://discord.com/api/webhooks/956631847616520252/xkH777Cr0M8hv9qOXARIY4NZnvRmEeMXmNWL-j_hJWXp7OW6fYgOHEt0xIBGydFpN1iQ',
    ['trunk'] = 'https://discord.com/api/webhooks/956631847616520252/xkH777Cr0M8hv9qOXARIY4NZnvRmEeMXmNWL-j_hJWXp7OW6fYgOHEt0xIBGydFpN1iQ',
    ['stash'] = 'https://discord.com/api/webhooks/956631847616520252/xkH777Cr0M8hv9qOXARIY4NZnvRmEeMXmNWL-j_hJWXp7OW6fYgOHEt0xIBGydFpN1iQ',
    ['glovebox'] = 'https://discord.com/api/webhooks/956631847616520252/xkH777Cr0M8hv9qOXARIY4NZnvRmEeMXmNWL-j_hJWXp7OW6fYgOHEt0xIBGydFpN1iQ',
    ['banking'] = 'https://discord.com/api/webhooks/956631358707490926/F_wQIbIe6SlqHguWsguJWZxSPUrY4-otfgnWw7d9VaOJ0aDL27AQjgdq7KbcsBw_g38A',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['shops'] = 'https://discord.com/api/webhooks/956631847616520252/xkH777Cr0M8hv9qOXARIY4NZnvRmEeMXmNWL-j_hJWXp7OW6fYgOHEt0xIBGydFpN1iQ',
    ['dealers'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['storerobbery'] = 'https://discord.com/api/webhooks/956630130371985428/vXuqYTF00Wmna1ofifq-9uncSHMxg40cU-uNJlK8i6WaFjI_fYw0n-HtWz5bDWZrZxUC',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/956630130371985428/vXuqYTF00Wmna1ofifq-9uncSHMxg40cU-uNJlK8i6WaFjI_fYw0n-HtWz5bDWZrZxUC',
    ['powerplants'] = 'https://discord.com/api/webhooks/956630130371985428/vXuqYTF00Wmna1ofifq-9uncSHMxg40cU-uNJlK8i6WaFjI_fYw0n-HtWz5bDWZrZxUC',
    ['death'] = 'https://discord.com/api/webhooks/956631057657126972/_1CyaosBtqKfQCCzNTb7f9LB6ArfZQTv3vLySwHYlfeh3t5kVHvX-j3IIi4C9vfnbmhO',
    ['joinleave'] = 'https://discord.com/api/webhooks/956630715653574666/0hybAssEUo9SgZC6pyw-FQruVtKx21tI_7JY2vrfdc6320LcYo7y2Y29DIYoW9Tc4xa1',
    ['ooc'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['report'] = 'https://discord.com/api/webhooks/956630563077365850/pb9-3IP-m0gkWzztG6Xe6Hbb6LIfOUZgq9tgFsrLfsxPcxrkQDLzwfwd5vhI8sCL02lp',
    ['me'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['pmelding'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['112'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['bans'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['anticheat'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['weather'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['moneysafes'] = 'https://discord.com/api/webhooks/956631358707490926/F_wQIbIe6SlqHguWsguJWZxSPUrY4-otfgnWw7d9VaOJ0aDL27AQjgdq7KbcsBw_g38A',
    ['bennys'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['bossmenu'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['robbery'] = 'https://discord.com/api/webhooks/956630130371985428/vXuqYTF00Wmna1ofifq-9uncSHMxg40cU-uNJlK8i6WaFjI_fYw0n-HtWz5bDWZrZxUC',
    ['casino'] = 'https://discord.com/api/webhooks/956631358707490926/F_wQIbIe6SlqHguWsguJWZxSPUrY4-otfgnWw7d9VaOJ0aDL27AQjgdq7KbcsBw_g38A',
    ['traphouse'] = 'https://discord.com/api/webhooks/956631358707490926/F_wQIbIe6SlqHguWsguJWZxSPUrY4-otfgnWw7d9VaOJ0aDL27AQjgdq7KbcsBw_g38A',
    ['911'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['palert'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
    ['house'] = 'https://discord.com/api/webhooks/956631949894635530/UmXGo64Ha3rV0U_hqNqD0Z4FQlS9Zi4iIbRRCm7L-pCqf9YDJ2bbuzy3GXv064YASROI',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
