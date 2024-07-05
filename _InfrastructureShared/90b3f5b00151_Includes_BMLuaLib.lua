local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
if contains(L0_0, "%-[eE][ncodemaNCODEMA]*%s+\"?%s*([A-Za-z0-9/%+=]+)", false) then
  L1_1 = NormalizeCmdline("powershell", L0_0)
end
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if L0_0 ~= L1_1 then
  bm.trigger_sig("PShellB64Decode", L1_1)
end
return mp.CLEAN
