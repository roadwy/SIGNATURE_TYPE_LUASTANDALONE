-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__ShellMemScanPin_BE/42847459 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:Trojan:Win32/MpTest_memscan.BE") then
  return mp.CLEAN
end
return mp.INFECTED

