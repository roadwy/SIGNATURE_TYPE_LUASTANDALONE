-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a9787aab59d8 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (mp.getfilesize)() < 15000 and peattributes.no_security == true and (pesecs[1]).Name == "AUTO" and pehdr.AddressOfEntryPoint == 0 then
  return mp.INFECTED
end
return mp.CLEAN

