local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if not L0_0 then
  return mp.CLEAN
end
if contains(L0_0, "powershell") or contains(L0_0, "cmd.exe") or contains(L0_0, "wscript") or contains(L0_0, "mshta") or contains(L0_0, "jscript") or contains(L0_0, "wmic") or contains(L0_0, "rundll32") or contains(L0_0, "regsvr32") then
  bm_AddRelatedFileFromCommandLine(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
