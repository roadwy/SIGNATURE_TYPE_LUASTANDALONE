local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L0_0 = L0_0()
    L1_1 = MpCommon
    L1_1 = L1_1.GetPersistContext
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L2_2, L3_3, L4_4 = nil, nil, nil
    if L1_1 ~= nil then
      for L8_8, L9_9 in L5_5(L6_6) do
        L10_10 = string
        L10_10 = L10_10.match
        L10_10 = L10_10(L9_9, "^AppName:([%w%.]+)$")
        if L10_10 ~= nil then
          L2_2 = L10_10
        end
        L10_10 = string.match(L9_9, "^AppVersion:([%w%.]+)$")
        if L10_10 ~= nil then
          L3_3 = L10_10
        end
        L10_10 = string.match(L9_9, "^AppVersionStr:([%w%.]+)$")
        if L10_10 ~= nil then
          L4_4 = L10_10
        end
      end
    end
    if L2_2 == nil then
      return L5_5
    end
    if L3_3 ~= nil then
      L8_8 = AppendToRollingQueue
      L9_9 = L5_5
      L10_10 = L0_0
      L8_8(L9_9, L10_10, L3_3, L6_6, L7_7)
    elseif L4_4 ~= nil then
      L8_8 = AppendToRollingQueue
      L9_9 = L5_5
      L10_10 = L0_0
      L8_8(L9_9, L10_10, L4_4, L6_6, L7_7)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
