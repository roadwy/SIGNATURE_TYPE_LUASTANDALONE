local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = safeJsonDeserialize
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L1_1 = L0_0.ip
      if L1_1 then
        L1_1 = tonumber
        L1_1 = L1_1(L0_0.action.action)
        if L1_1 == 1 then
          L1_1 = L0_0.confidence
          if L1_1 >= 99 then
            L1_1 = tonumber
            L1_1 = L1_1(L0_0.action.parameter)
            pcall(MpCommon.AddBlockingFirewallRule, L0_0.ip, L0_0.action.ttl, mp.bitand(L1_1, 1) == 1, mp.bitand(L1_1, 2) == 2)
            bm.trigger_sig("GenericRansomwareRemoteEncryption", "Malware")
          end
        end
      end
      L0_0.ppID = nil
      L0_0.imagePath = nil
      L1_1 = reportSessionInformationInclusive
      L1_1 = L1_1()
      L0_0.sessionInfo = L1_1
      L1_1 = versioning
      L1_1 = L1_1.IsSeville
      L1_1 = L1_1()
      if L1_1 then
        L1_1 = bm
        L1_1 = L1_1.set_detection_string
        L1_1(safeJsonSerialize(L0_0))
      end
      L1_1 = mp
      L1_1 = L1_1.INFECTED
      return L1_1
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
