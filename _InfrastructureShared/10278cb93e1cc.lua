-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10278cb93e1cc 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_hasexports") and (mp.getfilesize)() >= 6242304 and (mp.getfilesize)() < 6246400 then
  return mp.INFECTED
end
return mp.CLEAN

