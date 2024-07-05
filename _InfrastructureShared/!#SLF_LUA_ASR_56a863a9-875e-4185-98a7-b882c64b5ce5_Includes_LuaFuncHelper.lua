local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
function L0_0(A0_17)
  local L1_18, L2_19, L3_20, L4_21, L5_22, L6_23, L7_24
  L1_18 = "ASR_VULN_DRIVERS"
  L2_19 = 8640000
  L3_20 = 100
  if A0_17 == "ALL" then
    L7_24 = "true"
    L4_21(L5_22, L6_23, L7_24, L2_19, L3_20)
    return
  end
  for L7_24 in L4_21(L5_22, L6_23) do
    AppendToRollingQueue(L1_18, L7_24, "true", L2_19, L3_20)
  end
end
function L1_1()
  if GetRollingQueue("ASR_VULN_DRIVERS") ~= nil and not pcall(MpCommon.RollingQueueErase, "ASR_VULN_DRIVERS") then
    mp.set_mpattribute("MpInternal_researchdata=ERROR=Failed to erase RQ!")
    return mp.INFECTED
  end
end
function L2_2(A0_25)
  if IsKeyInRollingQueue("ASR_VULN_DRIVERS", A0_25, true) then
    return true
  end
  if IsKeyInRollingQueue("ASR_VULN_DRIVERS", "ALL", true) then
    return true
  end
  return false
end
L3_3 = mp
L3_3 = L3_3.IsHipsRuleEnabled
L4_4 = "56a863a9-875e-4185-98a7-b882c64b5ce5"
L3_3 = L3_3(L4_4)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = nil
L4_4 = mp
L4_4 = L4_4.enum_mpattributesubstring
L4_4 = L4_4(L5_5)
if L5_5 > 0 then
  for L8_8, L9_9 in L5_5(L6_6) do
    L3_3 = L10_10
    if L3_3 then
      break
    end
    L3_3 = L10_10
    if L3_3 then
      break
    end
  end
end
if not L3_3 then
  L4_4 = L5_5
  if L5_5 > 0 then
    for L8_8, L9_9 in L5_5(L6_6) do
      L3_3 = L10_10
      if L3_3 then
        break
      end
    end
  end
end
if not L3_3 then
  return L5_5
end
L6_6[1] = L5_5
L7_7.SIG_CONTEXT = "LUA"
L7_7.CONTENT_SOURCE = "SLF:LUA:ASR:56a863a9-875e-4185-98a7-b882c64b5ce5"
L7_7.TAG = "NOLOOKUP"
L8_8 = pcall
L9_9 = mp
L9_9 = L9_9.GetUrlReputation
L9_9 = L8_8(L9_9, L10_10, L11_11)
if L8_8 and L9_9 then
elseif not L10_10 then
  if L10_10 then
    L10_10(L11_11)
  else
    L10_10(L11_11)
  end
  return L10_10
end
for L13_13, L14_14 in L10_10(L11_11) do
  L15_15 = L14_14.determination
  if L15_15 == 1 then
    L15_15 = {}
    if L16_16 then
      for _FORV_19_, _FORV_20_ in L16_16(L14_14.urlresponsecontext) do
        L15_15[_FORV_20_.key] = _FORV_20_.value
      end
    end
    if not L16_16 then
      mp.set_mpattribute("MpInternal_researchdata=ERROR=NULL URLresponsecontext received")
      return mp.INFECTED
    end
    if string.find(L16_16, L3_3, 1, true) then
      mp.set_mpattribute("CLOUD:ASRAllowDriver_" .. L3_3)
    else
      mp.set_mpattribute("CLOUD:ASRBlockDriver_" .. L3_3)
    end
    L0_0(L16_16)
    return mp.CLEAN
  end
  L15_15 = L14_14.determination
  if L15_15 == 2 then
    L15_15 = mp
    L15_15 = L15_15.set_mpattribute
    L15_15(L16_16)
    L15_15 = L1_1
    L15_15()
    L15_15 = mp
    L15_15 = L15_15.CLEAN
    return L15_15
  end
end
return L10_10
