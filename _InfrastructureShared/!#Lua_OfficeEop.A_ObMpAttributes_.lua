local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L2_2 = L0_0
  L1_1 = L0_0.match
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = {
    L2_2,
    L3_3,
    L4_4,
    L5_5,
    L6_6,
    L7_7
  }
  L2_2 = "ALF:Exploit:O97M/"
  L2_2 = 0
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = mp
    L8_8 = L8_8.enum_mpattributesubstring
    L9_9 = L7_7
    L8_8 = L8_8(L9_9)
    if L8_8 ~= nil then
      L9_9 = type
      L10_10 = L8_8
      L9_9 = L9_9(L10_10)
      if L9_9 == "table" then
        L9_9 = #L8_8
        L2_2 = L2_2 + L9_9
        if L2_2 >= 3 then
          L9_9 = mp
          L9_9 = L9_9.INFECTED
          return L9_9
        end
      end
    end
  end
  L8_8 = "SCRIPT:CVE-"
  L9_9 = "SCPT:Ploty.CVE-"
  L10_10 = "SCPT:RTF/CVE-"
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = mp
    L10_10 = L10_10.enum_mpattributesubstring
    L10_10 = L10_10(L9_9)
    if L10_10 ~= nil and type(L10_10) == "table" then
      if L2_2 == 1 and L4_4 >= 4 then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
