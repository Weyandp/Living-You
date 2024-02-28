Server_Config = {}

Server_Config.WebhookSettings = {
    color = 0xfe0b0b,
    username = 'Workstation',
    author_url = 'https://cdn.discordapp.com/attachments/1057342168391503905/1068641907569348749/hex.png',
    icon_url = 'https://cdn.discordapp.com/attachments/1057342168391503905/1068641907569348749/hex.png',
    disable_ip = true 
}

Server_Config.Webhooks = {
    ['deposit'] = {
        enabled = true,
        url = 'https://discord.com/api/webhooks/1138637744722165820/CxZdGpiVdqv5VRtIK_WSEZJSwy3N6Y98T6FRHUGjHDoIYik-HCw6riFzB096-eXsJtIF'
    },
    
    ['withdraw'] = {
        enabled = true,
        url = 'https://discord.com/api/webhooks/1138637530653261986/ppuckOKcsH0V7VP-aPb-XAENc-eeJRiwYe_9hyjAJ2zJQzE8WVvGUEivUCRmnETkW3eU'
    },

    ['transfer'] = {
        enabled = true,
        url = 'https://discord.com/api/webhooks/1138637335299379321/RVtj76k9_GwP63QhbDE5GPcJuUus3I-zx_jyNKqFXVsGJMvMills43i4n-JK9AUduSN_'
    }
}