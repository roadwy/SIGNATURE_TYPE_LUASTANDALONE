-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15401c9b975f 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2800000 then
  return mp.LOWFI
end
return mp.CLEAN

