local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 32 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:LastFolder0!downloads"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = split
L1_1 = string
L1_1 = L1_1.lower
L6_6 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3))
L1_1 = L1_1.sub
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2)
L1_1 = {}
for L5_5, L6_6 in L2_2(L3_3) do
  if 32 < L6_6:sub(1, 1):byte() and L6_6:sub(1, 1):byte() < 126 then
    kvsplit(L6_6, "=", L1_1)
  end
end
if L2_2 ~= "" then
  if L2_2 then
    if L2_2 then
      if L2_2 ~= "" then
        L5_5 = mp
        L5_5 = L5_5.GetMOTWReferrerUrl
        L5_5 = L4_4(L5_5)
        L6_6 = L3_3 or ""
        L1_1.motwhosturl = L6_6
        L6_6 = L5_5 or ""
        L1_1.motwreferrerurl = L6_6
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L6_6(string.format("MpInternal_researchdata=CC_iShortcutData=%s", MpCommon.Base64Encode(safeJsonSerialize(L1_1))))
        L6_6 = mp
        L6_6 = L6_6.INFECTED
        return L6_6
      end
    end
  end
end
return L2_2
