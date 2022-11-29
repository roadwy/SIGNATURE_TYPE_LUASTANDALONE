-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/153780b916ae1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT < 8 and mp.HSTR_WEIGHT > 1 then
  (mp.set_mpattribute)("HSTR:Trojan:Win32/Emotet.M1")
end
return mp.INFECTED

