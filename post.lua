package.path = '/app/conf/?.lua;' .. package.path

local cjson = require 'cjson'
local resty_post = require 'post_lib'
local post = resty_post:new()
local m = post:read()
ngx.say(cjson.encode({
	k = m["k"]
}))
