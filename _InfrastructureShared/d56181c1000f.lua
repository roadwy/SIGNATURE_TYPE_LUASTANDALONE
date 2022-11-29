-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d56181c1000f 

-- params : ...
-- function num : 0
if peattributes.no_security == false and (mp.get_mpattribute)("TEL:REVCERT:SinghAgile.A") then
  return mp.INFECTED
end
return mp.CLEAN

