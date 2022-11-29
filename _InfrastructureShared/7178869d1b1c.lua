-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7178869d1b1c 

-- params : ...
-- function num : 0
if (pesecs[5]).Name == "!EPack" and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

