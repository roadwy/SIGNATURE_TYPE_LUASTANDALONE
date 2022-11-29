-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f561c83d02e1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() == 806912 then
  return mp.INFECTED
end
return mp.CLEAN

