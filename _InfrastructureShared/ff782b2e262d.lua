-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ff782b2e262d 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(84, 2)
if l_0_0 ~= nil and l_0_0 == 523 then
  return mp.INFECTED
end
return mp.CLEAN

