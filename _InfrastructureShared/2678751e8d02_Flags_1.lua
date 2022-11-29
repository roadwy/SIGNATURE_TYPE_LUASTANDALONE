-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2678751e8d02_Flags_1 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage > 2031616 and pehdr.SizeOfImage < 2097152 then
  (mp.changedetectionname)(805306373)
  return mp.INFECTED
end
return mp.SUSPICIOUS

