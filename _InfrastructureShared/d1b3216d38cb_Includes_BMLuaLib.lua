local L0_0, L1_1
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
end
if contains(L0_0, "%-[eE][ncodemaNCODEMA]*%s+", false) then
  L1_1 = NormalizeCmdline("powershell", L0_0)
  if contains(L1_1, "downloadstring") then
    L0_0 = L1_1
    bm.add_related_string("WmiprvseRemoteProc_c", L0_0, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
return mp.CLEAN
