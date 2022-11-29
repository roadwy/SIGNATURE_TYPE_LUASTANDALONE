-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/78298c45342b 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2000 then
  return mp.INFECTED
end
return mp.CLEAN

