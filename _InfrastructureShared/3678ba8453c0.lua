-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3678ba8453c0 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[1]).Size < 256 then
  return mp.INFECTED
end
return mp.CLEAN

