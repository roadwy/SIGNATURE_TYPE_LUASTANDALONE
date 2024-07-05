local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if not L0_0 then
  return mp.CLEAN
end
if contains(L0_0, "powershell") then
end
if contains(L0_0, "cmd.exe") then
end
if contains(L0_0, "wscript") then
end
if contains(L0_0, "mshta") then
end
if contains(L0_0, "jscript") then
end
if contains(L0_0, "wmic") then
end
if contains(L0_0, "rundll32") then
end
if contains(L0_0, "regsvr32") then
end
if 1 < nil + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 then
  bm_AddRelatedFileFromCommandLine(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
