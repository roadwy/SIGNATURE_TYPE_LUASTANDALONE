-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11178bd2495cb 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 7744 and l_0_0 <= 9000 and (pesecs[2]).Name == ".wtf" and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN

