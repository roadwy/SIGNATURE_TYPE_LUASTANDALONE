local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2:lower()
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2:lower()
end
if StringEndsWith(L0_0, "werfault.exe") or StringEndsWith(L0_0, "wermgr.exe") then
  triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/WerInject.SA")
  return mp.INFECTED
end
return mp.CLEAN
