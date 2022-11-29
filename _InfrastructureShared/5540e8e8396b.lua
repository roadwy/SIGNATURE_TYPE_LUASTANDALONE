-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5540e8e8396b 

-- params : ...
-- function num : 0
if (mp.getfilesize)() == 35840 then
  return mp.INFECTED
end
return mp.LOWFI

