local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.GetDateFromTimeT
L2_2 = MpCommon
L2_2 = L2_2.GetCurrentTimeT
L9_9 = L2_2()
L3_3 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2())
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = L8_8.AuthenticodeContentType
  if L9_9 ~= "PE" then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = L8_8.Certificates
  if L9_9 ~= nil then
    for _FORV_13_, _FORV_14_ in ipairs(L9_9) do
      if _FORV_14_.ValidTo ~= nil and (L3_3 > _FORV_14_.ValidTo.Year or _FORV_14_.ValidTo.Year == L3_3 and L2_2 > _FORV_14_.ValidTo.Month or _FORV_14_.ValidTo.Year == L3_3 and _FORV_14_.ValidTo.Month == L2_2 and L1_1 > _FORV_14_.ValidTo.Day) then
        return mp.INFECTED
      end
    end
  end
end
return L4_4
