local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.enum_mpattributesubstring
  L2_2 = "SCPT:JS/AsrobfusAtt"
  L1_1 = L1_1(L2_2)
  L2_2 = #L1_1
  if L2_2 >= 1 then
    L2_2 = pcall
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_AMSI_APPNAME
    L3_3 = L2_2(L3_3, L4_4)
    if L2_2 and L3_3 == "JScript" then
      L4_4 = pcall
      L5_5 = mp
      L5_5 = L5_5.get_contextdata
      L6_6 = mp
      L6_6 = L6_6.CONTEXT_DATA_AMSI_CONTENTNAME
      L5_5 = L4_4(L5_5, L6_6)
      if L4_4 and L5_5 ~= nil then
        L6_6 = string
        L6_6 = L6_6.lower
        L6_6 = L6_6(L5_5)
        if MpCommon.QueryPersistContext(L6_6, "AsrObfusWasScanned") and not MpCommon.QueryPersistContext(L6_6, "AsrObfusPersist") then
          return mp.INFECTED
        end
      end
    end
  end
else
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L6_6 = L2_2()
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2())
  L2_2 = MpCommon
  L2_2 = L2_2.AppendPersistContext
  L3_3 = L1_1
  L4_4 = "AsrObfusWasScanned"
  L5_5 = 0
  L2_2(L3_3, L4_4, L5_5)
  L2_2 = mp
  L2_2 = L2_2.enum_mpattributesubstring
  L3_3 = "SCPT:JS/AsrobfusAtt"
  L2_2 = L2_2(L3_3)
  L3_3 = #L2_2
  if L3_3 >= 1 then
    L3_3 = MpCommon
    L3_3 = L3_3.AppendPersistContext
    L4_4 = L1_1
    L5_5 = "AsrObfusPersist"
    L6_6 = 0
    L3_3(L4_4, L5_5, L6_6)
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
