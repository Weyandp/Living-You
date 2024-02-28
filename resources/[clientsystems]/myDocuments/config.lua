cfg = {}
Translation = {}

cfg.Locale = 'de'
cfg.cardsPosition = "right top" -- Combinations of left, middle, right and top, bottom
-- 'de' or 'us' time format
-- de: DD.MM.YYYY | hh:mm
-- us: MM/DD/YYYY | hh:mm
cfg.dateFormat = 'us' 

-- PROPERTIES --
cfg.useMyProperties = false
cfg.useQuasarHousing = false
-- PROPERTIES --


-- CONTROLS --
--
cfg.Command = 'documents'
cfg.useChangeMailCommand = true
cfg.changeMailCommand = 'changeMail'

-- Key
cfg.useKey = true
cfg.Key = 166

-- OPEN TRIGGER
-- TriggerClientEvent('myDocuments:open')
-- Can be used from every script

cfg.AbortKey = 177
cfg.AbortKeyName = 'INPUT_CELLPHONE_CANCEL'
cfg.ScreenshotKey = 201 -- 18 (enter and spacebar) or 201 (enter and num enter)
cfg.ScreenshotKeyName = 'INPUT_FRONTEND_ACCEPT'
--
-- CONTROLS --

cfg.defaultMailSuffix = '@mail.com'

-- PHONE --
cfg.phoneNumberColumn = 'phone_number' -- in users

-- Some phones do not use a coulumn only for the phone number and use a column like 'charinfo' instead. Then enable this
-- Example: qs_phone
cfg.useSpecialPhoneColumn = false
cfg.specialPhoneColumn = 'charinfo'
cfg.phoneEntry = 'phone'
-- PHONE --

Translation = {
    ['de'] = {
        ['idcard'] = 'Personalausweis',
        ['drive'] = 'Führerschein',
        ['hunting'] = 'Jagdschein',
        ['fly'] = 'Pilotenlizenz',
        ['boat'] = 'Bootführerschein',
        ['weapon'] = 'Waffenschein',
        ['lawyer'] = 'Anwaltsausweis',
        ['lspd'] = 'Dienstausweis (LSPD)',
        ['lsmd'] = 'Dienstausweis (LSMD)',
        ['business'] = 'Visitenkarte',
        ['car'] = 'Auto',
        ['bike'] = 'Motorrad',
        ['truck'] = 'LKW',
        ['dmv'] = 'Theoretischer Führerschein',
        ['infobar_1'] = ' um das Dokument zu speichern',
        ['infobar_2'] = ' um das Dokument zu schließen',
        ['keymapping_desc'] = 'Open Documents',
        ['no_nearby'] = '~r~Es ist niemand in deiner Nähe!',
        ['no_property'] = 'No property',
        ["giveLicenseTarget"] = "Deine Lizenzen wurden ~y~verändert~s~!",
        ["giveLicenseSender"] = "Lizenzen ~g~ergfolgreich~s~ aktualisiert!",
        ["mail_changed"] = '~g~Mail wurde erfolgreich geändert!',
    },

    ['en'] = {
        ['idcard'] = 'ID Card',
        ['drive'] = 'Driving License',
        ['hunting'] = 'Hunting License',
        ['fly'] = 'Aircraft License',
        ['boat'] = 'Boating License',
        ['weapon'] = 'Weapon License',
        ['lawyer'] = 'Lawyers License',
        ['lspd'] = 'LSPD ID Card',
        ['lsmd'] = 'LSMD ID Card',
        ['business'] = 'Business Card',
        ['car'] = 'Car',
        ['bike'] = 'Bike',
        ['truck'] = 'Truck',
        ['dmv'] = 'Theoretical drivers license',
        ['infobar_1'] = ' to save the document',
        ['infobar_2'] = ' to close the document',
        ['keymapping_desc'] = 'Open Documents',
        ['no_nearby'] = '~r~There is nobody nearby!',
        ['no_property'] = 'No property',
        ["giveLicenseTarget"] = "You licenses were ~y~updated~s~!",
        ["giveLicenseSender"] = "Licenses ~g~successfully~s~ updated!",
        ["mail_changed"] = '~g~Mail successfully changed!',
    },
}

cfg.documentlist = {
    {label = Translation[cfg.Locale]['idcard'], requiredLicense = nil, requiredJob = nil, type = 'idcard'},
    {label = Translation[cfg.Locale]['drive'], requiredLicense = 'dmv', requiredJob = nil, type = 'drive'},
    {label = Translation[cfg.Locale]['hunting'], requiredLicense = 'hunting', requiredJob = nil, type = 'hunting'},
    {label = Translation[cfg.Locale]['fly'], requiredLicense = 'aircraft', requiredJob = nil, type = 'fly'},
    {label = Translation[cfg.Locale]['boat'], requiredLicense = 'boating', requiredJob = nil, type = 'boat'},
    {label = Translation[cfg.Locale]['weapon'], requiredLicense = 'weapon', requiredJob = nil, type = 'weapon'},
    {label = Translation[cfg.Locale]['lawyer'], requiredLicense = nil, requiredJob = {'lawyer', 'police'}, type = 'lawyer'},
    {label = Translation[cfg.Locale]['lspd'], requiredLicense = nil, requiredJob = {'police', 'lspd'}, type = 'pd'},
    {label = Translation[cfg.Locale]['lsmd'], requiredLicense = nil, requiredJob = {'ambulance'}, type = 'md'},
    {label = Translation[cfg.Locale]['business'], requiredLicense = nil, requiredJob = nil, type = 'businessCard'},
}

cfg.giveableLicenses = {
    {label = Translation[cfg.Locale]['weapon'], type = "weapon", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['hunting'], type = "hunting", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['fly'], type = "aircraft", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['bike'], type = "bike", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['truck'], type = "truck", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['dmv'], type = "dmv", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['car'], type = "drive", requiredJob = {"police"}, requiredLicense = ""},
    {label = Translation[cfg.Locale]['boat'], type = "boat", requiredJob = {"police"}, requiredLicense = ""},
}

cfg.drivingLicenseContent = {
    {databasename = 'drive', label = Translation[cfg.Locale]['car']},
    {databasename = 'bike', label = Translation[cfg.Locale]['bike']},
    {databasename = 'truck', label = Translation[cfg.Locale]['truck']},
}

-- If you enable this also go to the fxmanifest and reenable the NativeUI line at client scripts
cfg.useNativeUI = false -- not recommended