local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_NEWLYCREATEDHINT
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
  L11_11 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L3_3(L4_4))
  if L2_2 ~= "svchost.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
  L2_2 = L2_2(L3_3)
  L3_3 = mp
  L3_3 = L3_3.GetProcessCommandLine
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  L4_4 = string
  L4_4 = L4_4.len
  L4_4 = L4_4(L5_5)
  if L4_4 < 60 or L4_4 > 120 then
    return L5_5
  end
  L8_8 = 1
  L9_9 = true
  if L5_5 == nil then
    return L5_5
  end
  if not L5_5 then
    L8_8 = 0
    L5_5(L6_6, L7_7, L8_8)
  end
  if L5_5 == nil then
    L8_8 = 1486841132
    L6_6(L7_7, L8_8)
  end
  if L6_6 == 0 then
    L8_8 = 1486841132
    L6_6(L7_7, L8_8)
  end
else
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_ONOPEN
  if L1_1 == L2_2 then
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
    L2_2 = L2_2(L3_3)
    if not L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = MpCommon
    L2_2 = L2_2.QueryPersistContext
    L3_3 = L0_0
    L4_4 = "DroppedByWPADService"
    L2_2 = L2_2(L3_3, L4_4)
    if not L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.enum_mpattributesubstring
    L3_3 = "PreAgent:"
    L2_2 = L2_2(L3_3)
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = #L2_2
    if L3_3 == 0 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = 0
    L4_4 = 0
    for L8_8, L9_9 in L5_5(L6_6) do
      L10_10 = string
      L10_10 = L10_10.match
      L11_11 = L9_9
      L11_11 = L10_10(L11_11, "PreAgent:V(%d+)V(%d+)$")
      if L10_10 ~= nil and L3_3 < tonumber(L10_10) then
        L3_3 = tonumber(L10_10)
      end
      if L11_11 ~= nil and L4_4 < tonumber(L11_11) then
        L4_4 = tonumber(L11_11)
      end
    end
    if L3_3 < 362514 or L3_3 > 362529 or L4_4 < 362514 or L4_4 > 377514 then
      return L5_5
    end
    L3_3 = L3_3 - 362514
    L4_4 = L4_4 - 362514
    if L3_3 <= 1 and L4_4 <= 100 then
      return L5_5
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
