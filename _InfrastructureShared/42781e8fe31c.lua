-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/42781e8fe31c 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage > 135168 and pehdr.SizeOfImage < 143360 then
  return mp.INFECTED
end
return mp.CLEAN

