-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25409c93d1a8 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:find("%-%>.%d%d%d%d%d%d%d%d%d%d+/.%d%d%d%d%d%d%d%d%d%d+%.class$") ~= nil and (mp.getfilesize)() <= 2048 then
  (mp.set_mpattribute)("Lua:Java/MaliciousClassName")
end
return mp.INFECTED

