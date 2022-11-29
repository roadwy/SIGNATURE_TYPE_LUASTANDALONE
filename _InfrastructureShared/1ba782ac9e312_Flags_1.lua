-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1ba782ac9e312_Flags_1 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage > 720896 and pehdr.SizeOfImage < 917504 then
  (mp.changedetectionname)(268436329)
  return mp.INFECTED
end
return mp.SUSPICIOUS

