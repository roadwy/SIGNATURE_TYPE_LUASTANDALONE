local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[9]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[9]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[9]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[10]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[10]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = contains
L2_2 = L2_2(L0_0, "%-[eE][ncodemaNCODEMA]*%s+", false)
if L2_2 then
  L2_2 = NormalizeCmdline
  L2_2 = L2_2("powershell", L0_0)
  L1_1 = L2_2
  L2_2 = contains
  L2_2 = L2_2(L1_1, "downloadstring")
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L0_0 = L1_1
end
L2_2 = isIEXfound
L2_2 = L2_2(L0_0)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "raw.githubusercontent.com"
}
if contains(L0_0, L2_2) and IsSuspPSModule(L0_0) then
  bm.add_related_string("PSPublicStager_c_cmdline", L0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
