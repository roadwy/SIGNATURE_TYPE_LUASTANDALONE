local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  L1_1 = split
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, ",")
  L2_2 = {}
  function processActions(A0_3)
    local L1_4, L2_5, L3_6, L4_7, L5_8, L6_9, L7_10, L8_11, L9_12, L10_13, L11_14, L12_15, L13_16, L14_17
    for L4_7, L5_8 in L1_4(L2_5) do
      L6_9 = MpCommon
      L6_9 = L6_9.Base64Decode
      L6_9 = L6_9(L7_10)
      L6_9 = L7_10
      for L10_13, L11_14 in L7_10(L8_11) do
        L12_15 = split
        L13_16 = L11_14
        L14_17 = ":"
        L12_15 = L12_15(L13_16, L14_17)
        L11_14 = L12_15
        L12_15 = pcall
        L13_16 = mp
        L13_16 = L13_16.GetPPidFromPid
        L14_17 = L11_14[1]
        L13_16 = L12_15(L13_16, L14_17)
        L14_17 = _UPVALUE0_
        L14_17[L11_14[1]] = {success = L12_15, ppid = L13_16}
        if L12_15 then
          L14_17 = L11_14[2]
          bm.trigger_sig("Heimdall_ProcessActions", L14_17, L13_16)
        end
      end
    end
  end
  if not pcall(processActions, L1_1) then
    L2_2.error = {
      error = pcall(processActions, L1_1)
    }
    L2_2.TAG = "NOLOOKUP"
  end
  pcall(mp.GetUrlReputation, {
    "http://962b56e5-5eb2-4ed3-8757-3f22f190d202.report"
  }, safeJsonSerialize(L2_2))
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
