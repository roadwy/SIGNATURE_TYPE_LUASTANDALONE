-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6b78009469bc 

-- params : ...
-- function num : 0
if pehdr.Machine == 34404 then
  (mp.changedetectionname)(805306425)
end
if (hstrlog[5]).matched then
  return mp.INFECTED
end
return mp.CLEAN

