-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a17861527f7b 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and (mp.getfilesize)() < 6656 then
  return mp.INFECTED
end
return mp.CLEAN

