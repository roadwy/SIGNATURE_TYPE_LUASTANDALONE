-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5d7837eabd98_Flags_1 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage == 245760 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306372)
return mp.SUSPICIOUS

