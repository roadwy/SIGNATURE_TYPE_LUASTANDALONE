-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d278a3de88e7 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT < 6 and mp.HSTR_WEIGHT > 2 then
  (mp.set_mpattribute)("HSTR:Trojan:Win32/Emotet.K1")
end
return mp.INFECTED

