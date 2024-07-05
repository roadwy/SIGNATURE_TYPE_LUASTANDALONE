local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILEPATH
  L8_8 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3))
  L3_3 = L1_1
  L2_2 = L1_1.sub
  L4_4 = -9
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == "\\apppatch" then
    L2_2 = peattributes
    L2_2 = L2_2.isdll
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = pe
    L2_2 = L2_2.get_versioninfo
    L2_2 = L2_2()
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = L2_2.CompanyName
    if L3_3 == "Microsoft Corporation" then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_FILENAME
    L3_3 = L3_3(L4_4)
    L4_4 = string
    L4_4 = L4_4.len
    L4_4 = L4_4(L5_5)
    if L4_4 < 10 or L4_4 > 12 then
      return L5_5
    end
    for L8_8 = 1, L4_4 - 4 do
      if string.byte(L3_3, L8_8) < 97 or string.byte(L3_3, L8_8) > 122 then
        return mp.CLEAN
      end
    end
    L5_5(L6_6)
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
