local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "//SCPT:HTML/DoubleCryptoFraudKey"
L0_0 = L0_0(L1_1)
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "//SCPT:MSG/CryptoExtortion"
  L0_0 = L0_0(L1_1)
  if L0_0 == false then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "ALF:AGGR:SITE/CryptoExtort"
    L0_0 = L0_0(L1_1)
    if L0_0 == false then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
if L0_0.is_footer then
  L1_1 = mp.getfilesize() - mp.FOOTERPAGE_SZ + L1_1
end
if Infrastructure_CryptoSearcher(L1_1) == true then
  if mp.get_mpattribute("//SCPT:HTML/DoubleCryptoFraudKey") == true then
    mp.set_mpattribute("MpInternal_researchdata=threat=double")
  end
  if mp.get_mpattribute("//SCPT:MSG/CryptoExtortion") == true then
    mp.set_mpattribute("MpInternal_researchdata=threat=extort")
  end
  return mp.INFECTED
end
return mp.CLEAN
