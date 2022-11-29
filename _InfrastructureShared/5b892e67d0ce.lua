-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5b892e67d0ce 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage >= 819200 and pehdr.SizeOfImage < 827392 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306376)
return mp.SUSPICIOUS

