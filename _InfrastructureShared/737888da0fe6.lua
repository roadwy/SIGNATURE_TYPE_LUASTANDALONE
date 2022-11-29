-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/737888da0fe6 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll == true and pehdr.NumberOfSections == 7 and (pesecs[4]).Name == "onlyone0" and (pesecs[5]).Name == "onlyone1" then
  return mp.INFECTED
end
return mp.CLEAN

