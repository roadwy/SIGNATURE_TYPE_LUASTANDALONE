-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8f7855b294f9 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("HSTR:Trojan:Win32/Colisi")
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

