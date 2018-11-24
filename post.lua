package.path = '/app/conf/?.lua;' .. package.path

local resty_md5 = require "resty.md5"
local str = require "resty.string"

local cjson = require 'cjson'
local resty_post = require 'post_lib'
local post = resty_post:new()
local m = post:read()

local function add_md5(in_str)
	local md5 = resty_md5:new()
	md5:update(in_str)
	return in_str .. ' ' .. str.to_hex(md5:final())
end

ngx.say(cjson.encode({
	first_name = add_md5(m["first_name"]),
	last_name = add_md5(m["last_name"]),
	current_time = os.date("%Y-%m-%d %H:%M:%S"),
	say = "Just try OpenResty!"
}))
