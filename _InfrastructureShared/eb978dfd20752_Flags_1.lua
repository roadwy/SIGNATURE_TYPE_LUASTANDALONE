-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/eb978dfd20752_Flags_1 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:Virtool:Win32/Obfuscator.ACP")
if mp.HSTR_WEIGHT > 1 then
  return mp.SUSPICIOUS
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN

