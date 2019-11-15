ngx.header.content_type="application/json;charset=utf8"
local uri_args = ngx.req.get_uri_args();
local position = uri_args["position"];

-- 读取本地缓存
local cache_ngx = ngx.shared.dis_cache;
local adCache = cache_ngx:get('ad_cache_'..position);
if adCache ~= "" or adCache ~= nil then
	cache_ngx:delete("ad_cache_"..position)
	ngx.say("{\"flag\":true,\"message\":\"删除成功\"}")
end