local L0_0, L1_1
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p2
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[6].utf8p2
end
if contains(L0_0, {"rundll32", "regsvr32"}) then
  L0_0 = L0_0:lower()
elseif contains(L0_0, "%-[eE][ncodemaNCODEMA]*%s+", false) then
  L1_1 = NormalizeCmdline("powershell", L0_0)
  if contains(L1_1, {"rundll32", "regsvr32"}) then
    L0_0 = L1_1:lower()
  end
else
  return mp.CLEAN
end
if contains(L0_0, "http") and contains(L0_0, "invoke-webRequest") and (contains(L0_0, "start-process") or contains(L0_0, "get%-item.*%).length%s+%-ge%s+", false)) then
  return mp.INFECTED
end
return mp.CLEAN
