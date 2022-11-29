-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b5780d888c8b 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  (mp.set_mpattribute)("HSTR:Trojan:Win32/Tracur_01")
end
;
(mp.set_mpattribute)("do_deep_rescan")
return mp.INFECTED

