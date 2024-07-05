local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = MpCommon
L0_0 = L0_0.NidSearch
L1_1 = mp
L1_1 = L1_1.NID_ENABLE_EXTENDED_BAFS
L2_2 = 7
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L0_0 = "hmdprecisionpulse"
  L1_1 = "scan_counter"
  L2_2 = "max_scan"
  L3_3 = "run_tracker"
  L4_4 = 60
  L5_5 = 500
  L6_6 = MpCommon
  L6_6 = L6_6.AtomicCounterValueNamespaced
  L7_7 = L3_3
  L8_8 = L0_0
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 ~= nil then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = MpCommon
  L7_7 = L7_7.AtomicCounterValueNamespaced
  L8_8 = L1_1
  L9_9 = L0_0
  L7_7 = L7_7(L8_8, L9_9)
  if L7_7 == nil then
    L8_8 = MpCommon
    L8_8 = L8_8.AtomicCounterSetNamespaced
    L9_9 = L1_1
    L10_10 = L0_0
    L11_11 = 0
    L12_12 = L4_4
    L8_8(L9_9, L10_10, L11_11, L12_12)
  end
  L8_8 = MpCommon
  L8_8 = L8_8.AtomicCounterValueNamespaced
  L9_9 = L2_2
  L10_10 = L0_0
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 == nil then
    L9_9 = MpCommon
    L9_9 = L9_9.AtomicCounterSetNamespaced
    L10_10 = L2_2
    L11_11 = L0_0
    L12_12 = L5_5
    L13_13 = L4_4
    L9_9(L10_10, L11_11, L12_12, L13_13)
  end
  if L6_6 == nil then
    L9_9 = pcall
    L10_10 = MpCommon
    L10_10 = L10_10.AtomicCounterSetNamespaced
    L11_11 = L3_3
    L12_12 = L0_0
    L13_13 = 1
    L20_20 = L10_10(L11_11, L12_12, L13_13, L14_14)
    L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L10_10(L11_11, L12_12, L13_13, L14_14))
  end
  L9_9 = "http://962b56e5-5eb2-4ed3-8757-3f22f190d202.info"
  L10_10 = {}
  L10_10[1] = L9_9
  L11_11 = {}
  L11_11.SIG_CONTEXT = "LUA_GENERIC"
  L11_11.CONTENT_SOURCE = "HEIMDALL_PRECISION_PULSE"
  L11_11.TAG = "NOLOOKUP"
  L12_12 = pcall
  L13_13 = mp
  L13_13 = L13_13.GetUrlReputation
  L13_13 = L12_12(L13_13, L14_14, L15_15)
  if L12_12 and L13_13 then
  elseif not L14_14 then
    return L14_14
  end
  for L17_17, L18_18 in L14_14(L15_15) do
    L19_19 = L18_18.determination
    if L19_19 == 4 then
      L19_19 = L18_18.urlresponsecontext
      L20_20 = ""
      if L19_19 then
        for _FORV_24_, _FORV_25_ in ipairs(L19_19) do
          if _FORV_25_.key == "Payload" then
            L20_20 = _FORV_25_.value
            EnablePrecisionPulse(L20_20, "HmdEnablePrecisionPulseRecurring", L0_0, L1_1, L2_2)
            break
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
