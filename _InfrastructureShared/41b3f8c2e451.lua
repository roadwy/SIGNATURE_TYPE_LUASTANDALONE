local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 80000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.match
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p1
    L2_2 = ";targetprocessp(pid:%d%d+):(%d%d%d%d+)$"
    L1_1 = L0_0(L1_1, L2_2)
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.utf8p1
    L4_4 = ";targetprocessp(pid:%d%d+):(%d%d%d%d+)$"
    L3_3 = L2_2(L3_3, L4_4)
    if L0_0 == L2_2 and L1_1 == L3_3 then
      L4_4 = string
      L4_4 = L4_4.format
      L4_4 = L4_4("%s,ProcessStart:%s", L0_0, L1_1)
      bm.trigger_sig("ProcessInjectedBy", "BMGenCodeInjector.C", L4_4)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
