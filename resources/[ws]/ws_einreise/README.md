
# Thanks for buying ws_einreise!
# Please read carefully


# add a update event to your es_extended
# (not required but recommended)

# es_extended/server/classes/player.lua
# at function 'self.setGroup' add the event:

```lua
TriggerEvent("esx:setGroup", self.source, newGroup)
```

# also do not forget to import the sql (sql/sql.sql)


# NEW: API Support for ws_support-cp
# You can find a example in /server/api.lua