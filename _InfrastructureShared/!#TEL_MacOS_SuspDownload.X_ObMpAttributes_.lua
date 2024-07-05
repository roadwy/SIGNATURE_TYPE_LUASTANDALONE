local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L8_8 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= 1 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 ~= 1 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if L2_2 ~= 1 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
        if L2_2 ~= 1 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if L2_2 == 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
            L2_2 = not L2_2
          elseif L2_2 ~= 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          end
        end
      end
    end
  end
elseif L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L2_2 then
  L2_2 = {
    L3_3,
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    "thunderbird",
    "gmail"
  }
  L3_3 = "safari"
  L7_7 = "com.apple.webkit.networking"
  L8_8 = "microsoft outlook"
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(L4_4)
  if L3_3 == nil or L3_3 == "" then
    return L4_4
  end
  L3_3 = L4_4
  for L7_7, L8_8 in L4_4(L5_5) do
    if L8_8 ~= nil and string.find(L3_3, L8_8, 1, true) == 1 then
      mp.set_mpattribute("BM_MACFILE_DOWNLOADFROM_BROWSEREMAIL")
      if 1 > #mp.GetCertificateInfo() or mp.GetCertificateInfo() == nil then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
