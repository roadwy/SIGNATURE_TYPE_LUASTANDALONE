-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6778e2b44709 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT < 42 and (mp.getfilesize)() > 4194304 then
  return mp.CLEAN
end
return mp.INFECTED

