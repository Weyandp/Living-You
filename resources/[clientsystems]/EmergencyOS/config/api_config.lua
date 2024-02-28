-- Here you can configure you Fivem API connection, you have to buy and configure it in the Dashboard

SVConfig = {}

SVConfig.UseAPI = false

SVConfig.API = {
    username = "", -- Your EmergencyOS admin username
    password = "", -- Your EmergencyOS admin password
    key = ""       -- Your EmergencyOS API key
}

SVConfig.UseBilling = false

function createTicketBill(targetIdentifier, billSender, billFraction, billText, billAmount)

    --[[
        -- oxmysql exmaple, you have to edit this to fit you billing system
    local billId = MySQL.insert.await('INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES (?, ?, ?, ?, ?, ?)', {targetIdentifier, billSender, 'society', 'society_'..billFraction, billText, billAmount})
    --]]
    print(targetIdentifier, billSender, billFraction, billText, billAmount)
    return billId
end

--[[
    -- Snippet for jaksam1074 billingUi
RegisterNetEvent("billing_ui:onBillPaid", function(billid)
    TriggerEvent("EmergencyOS:billPayed", billid)
end)

]]--

-- Needs to be called when a bill is paid
SVConfig.BillingTrigger = "EmergencyOS:billPayed" -- TriggerEvent("EmergencyOS:billPayed", billId) or exports["EmergencyOS"]:billPaid(billId)
