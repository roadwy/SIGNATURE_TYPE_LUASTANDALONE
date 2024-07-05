local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16, L15_17
  L2_4 = -1
  L4_6 = -1
  L7_9 = mp
  L7_9 = L7_9.get_mpattributevalue
  L7_9 = L7_9(L8_10)
  L5_7 = L7_9
  L7_9 = mp
  L7_9 = L7_9.get_mpattributevalue
  L7_9 = L7_9(L8_10)
  L6_8 = L7_9
  if A0_2 == nil or A0_2 ~= true then
    A0_2 = false
  end
  if A0_2 == false then
    if L5_7 ~= nil and L6_8 ~= nil and L5_7 > -1 and L6_8 > -1 then
      L7_9 = L5_7
      return L7_9, L8_10
    else
      L7_9 = MpCommon
      L7_9 = L7_9.GetPersistContext
      L15_17 = L8_10()
      L7_9 = L7_9(L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16, L15_17, L8_10())
      if L7_9 ~= nil then
        for L11_13, L12_14 in L8_10(L9_11) do
          L13_15 = tonumber
          L14_16 = string
          L14_16 = L14_16.match
          L15_17 = L12_14
          L15_17 = L14_16(L15_17, "^Age:([0-9]+)$")
          L13_15 = L13_15(L14_16, L15_17, L14_16(L15_17, "^Age:([0-9]+)$"))
          L1_3 = L13_15
          if L1_3 ~= nil and L2_4 < L1_3 then
            L2_4 = L1_3
          end
          L13_15 = tonumber
          L14_16 = string
          L14_16 = L14_16.match
          L15_17 = L12_14
          L15_17 = L14_16(L15_17, "^Prevalence:([0-9]+)$")
          L13_15 = L13_15(L14_16, L15_17, L14_16(L15_17, "^Prevalence:([0-9]+)$"))
          L3_5 = L13_15
          if L3_5 ~= nil and L4_6 < L3_5 then
            L4_6 = L3_5
          end
        end
      end
      if L2_4 > -1 and L4_6 > -1 then
        L8_10(L9_11, L10_12)
        return L8_10, L9_11
      end
    end
  end
  L7_9 = 362514
  if L8_10 then
    if L9_11 > 0 then
      for L12_14, L13_15 in L9_11(L10_12) do
        L14_16 = string
        L14_16 = L14_16.match
        L15_17 = L13_15
        L15_17 = L14_16(L15_17, "PreAgent:V(%d+)V(%d+)$")
        if L14_16 then
          L1_3 = tonumber(L14_16)
        end
        L1_3 = L1_3 and L1_3 - L7_9
        if L2_4 < L1_3 then
          L2_4 = L1_3
        end
        if L15_17 then
          L3_5 = tonumber(L15_17)
        end
        L3_5 = L3_5 and L3_5 - L7_9
        if L4_6 < L3_5 then
          L4_6 = L3_5
        end
      end
    end
  end
  if L5_7 == nil or L6_8 == nil then
    L9_11(L10_12, L11_13)
  end
  return L9_11, L10_12
end
getAgePrev = L0_0
function L0_0(A0_18, A1_19)
  local L2_20, L3_21, L4_22, L5_23
  L2_20 = type
  L3_21 = A0_18
  L2_20 = L2_20(L3_21)
  if L2_20 == "number" then
    L2_20 = type
    L3_21 = A1_19
    L2_20 = L2_20(L3_21)
  elseif L2_20 ~= "number" then
    L2_20 = false
    return L2_20
  end
  if A0_18 > -1 and A1_19 > -1 then
    L2_20 = mp
    L2_20 = L2_20.set_mpattributeex
    L3_21 = "Lua:FmsAgeInDays"
    L4_22 = A0_18
    L2_20(L3_21, L4_22)
    L2_20 = mp
    L2_20 = L2_20.set_mpattributeex
    L3_21 = "Lua:FmsPrevalence"
    L4_22 = A1_19
    L2_20(L3_21, L4_22)
    L2_20 = "Age:"
    L3_21 = tostring
    L4_22 = A0_18
    L3_21 = L3_21(L4_22)
    L2_20 = L2_20 .. L3_21
    L3_21 = "Prevalence:"
    L4_22 = tostring
    L5_23 = A1_19
    L4_22 = L4_22(L5_23)
    L3_21 = L3_21 .. L4_22
    L4_22 = mp
    L4_22 = L4_22.getfilename
    L4_22 = L4_22()
    L5_23 = MpCommon
    L5_23 = L5_23.GetPersistContextCount
    L5_23 = L5_23(L4_22)
    if L5_23 == 0 then
      L5_23 = {}
      table.insert(L5_23, L2_20)
      table.insert(L5_23, L3_21)
      MpCommon.SetPersistContext(L4_22, L5_23, 0)
    else
      L5_23 = MpCommon
      L5_23 = L5_23.QueryPersistContext
      L5_23 = L5_23(L4_22, L2_20)
      if not L5_23 then
        L5_23 = MpCommon
        L5_23 = L5_23.AppendPersistContext
        L5_23(L4_22, L2_20, 0)
      end
      L5_23 = MpCommon
      L5_23 = L5_23.QueryPersistContext
      L5_23 = L5_23(L4_22, L3_21)
      if not L5_23 then
        L5_23 = MpCommon
        L5_23 = L5_23.AppendPersistContext
        L5_23(L4_22, L3_21, 0)
      end
    end
    if A0_18 == 0 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals0")
    elseif A0_18 == 1 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals1")
    elseif A0_18 == 2 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals2")
    elseif A0_18 == 3 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals3")
    elseif A0_18 == 4 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals4")
    elseif A0_18 == 5 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals5")
    elseif A0_18 == 6 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals6")
    elseif A0_18 == 7 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeEquals7")
    elseif A0_18 <= 15 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeUpTo15")
    elseif A0_18 <= 30 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeUpTo30")
    elseif A0_18 <= 90 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeUpTo90")
    elseif A0_18 <= 180 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeUpTo180")
    elseif A0_18 <= 360 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_AgeUpTo360")
    end
    if A1_19 == 0 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceEquals0")
    elseif A1_19 <= 10 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo10")
    elseif A1_19 <= 20 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo20")
    elseif A1_19 <= 50 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo50")
    elseif A1_19 <= 100 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo100")
    elseif A1_19 <= 500 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo500")
    elseif A1_19 <= 1000 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo1000")
    elseif A1_19 <= 5000 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo5000")
    elseif A1_19 <= 10000 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo10000")
    elseif A1_19 <= 50000 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo50000")
    elseif A1_19 <= 100000 then
      L5_23 = mp
      L5_23 = L5_23.set_mpattribute
      L5_23("BM_PrevalenceUpTo100000")
    end
    L5_23 = true
    return L5_23
  end
  L2_20 = false
  return L2_20
end
setAgePrev = L0_0
function L0_0(A0_24, A1_25)
  local L2_26, L3_27, L4_28, L5_29, L6_30, L7_31, L8_32, L9_33
  if A0_24 == nil or A0_24 == "" or A1_25 == nil or A1_25 == "" then
    L2_26 = false
    return L2_26
  end
  L2_26 = MpCommon
  L2_26 = L2_26.GetPersistContextCount
  L3_27 = A0_24
  L2_26 = L2_26(L3_27)
  if L2_26 == 0 then
    L2_26 = true
    return L2_26
  end
  L2_26 = {}
  L3_27 = false
  L4_28 = MpCommon
  L4_28 = L4_28.GetPersistContext
  L4_28 = L4_28(L5_29)
  if L4_28 ~= nil then
    for L8_32, L9_33 in L5_29(L6_30) do
      if L9_33 ~= A1_25 then
        table.insert(L2_26, L9_33)
      else
        L3_27 = true
      end
    end
  end
  if L3_27 == true then
    L8_32 = 0
    L5_29(L6_30, L7_31, L8_32)
  end
  return L3_27
end
clearPersistContext = L0_0
function L0_0(A0_34, A1_35)
  local L2_36, L3_37, L4_38, L5_39, L6_40, L7_41, L8_42, L9_43
  if A0_34 == nil or A0_34 == "" or A1_35 == nil or A1_35 == "" then
    L2_36 = false
    return L2_36
  end
  L2_36 = MpCommon
  L2_36 = L2_36.GetPersistContextCountNoPath
  L3_37 = A0_34
  L2_36 = L2_36(L3_37)
  if L2_36 == 0 then
    L2_36 = true
    return L2_36
  end
  L2_36 = {}
  L3_37 = false
  L4_38 = MpCommon
  L4_38 = L4_38.GetPersistContextNoPath
  L4_38 = L4_38(L5_39)
  if L4_38 ~= nil then
    for L8_42, L9_43 in L5_39(L6_40) do
      if L9_43 ~= A1_35 then
        table.insert(L2_36, L9_43)
      else
        L3_37 = true
      end
    end
  end
  if L3_37 == true then
    L8_42 = 0
    L5_39(L6_40, L7_41, L8_42)
  end
  return L3_37
end
clearPersistContextNoPath = L0_0
