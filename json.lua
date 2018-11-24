local cjson = require "cjson"

local json = cjson.encode({
    foo = "bar",
    some_object = "asd",
    some_array = ""
})

ngx.say(json)
