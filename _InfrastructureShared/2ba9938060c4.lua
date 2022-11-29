-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2ba9938060c4 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((nri.GetHttpRequestHeader)("User-Agent"))
if (string.find)(l_0_0, "medunja solodunnja", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

