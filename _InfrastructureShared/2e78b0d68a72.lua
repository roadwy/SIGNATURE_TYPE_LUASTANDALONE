-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2e78b0d68a72 

-- params : ...
-- function num : 0
if pehdr.Subsystem == 1 then
  (mp.changedetectionname)(805306385)
  return mp.INFECTED
end
return mp.INFECTED
