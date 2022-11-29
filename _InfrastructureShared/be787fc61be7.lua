-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/be787fc61be7 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == false and l_0_0 >= 135168 and l_0_0 <= 163840 then
  return mp.INFECTED
end
return mp.CLEAN

