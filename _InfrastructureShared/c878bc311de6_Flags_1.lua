-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c878bc311de6_Flags_1 

-- params : ...
-- function num : 0
if pehdr.Machine == 332 then
  (mp.changedetectionname)(805306393)
end
if mp.HSTR_WEIGHT >= 8 then
  if mp.HSTR_WEIGHT >= 10 then
    return mp.INFECTED
  end
  return mp.SUSPICIOUS
end
return mp.CLEAN

