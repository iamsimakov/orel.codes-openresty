local resty_md5 = require "resty.md5"
    local md5 = resty_md5:new()
    if not md5 then
        ngx.say("failed to create md5 object")
        return
    end

    local ok = md5:update("hello")
    if not ok then
        ngx.say("failed to add data")
        return
    end

    local digest = md5:final()

    local str = require "resty.string"
    ngx.say("md5: ", str.to_hex(digest))
    