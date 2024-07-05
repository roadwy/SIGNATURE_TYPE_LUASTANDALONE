local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_AMSI_OPERATION_PPID
L2_2 = L1_1(L2_2, L3_3)
if L1_1 and L2_2 ~= nil then
  L0_0 = L2_2
else
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_PROCESS_PPID
  L3_3 = L3_3(L4_4)
  L0_0 = L3_3
end
if L0_0 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = GetRealPidForScenario
L4_4 = L0_0
L3_3 = L3_3(L4_4)
L0_0 = L3_3
if L0_0 ~= nil then
  L3_3 = IsPidExcluded
  L4_4 = L0_0
  L3_3 = L3_3(L4_4)
  if not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.get_mpattribute
    L4_4 = "AGGR:TTExclusion"
    L3_3 = L3_3(L4_4)
    if not L3_3 then
      L3_3 = mp
      L3_3 = L3_3.get_mpattribute
      L4_4 = "SCRIPT:TTExclusion"
      L3_3 = L3_3(L4_4)
      if not L3_3 then
        L3_3 = mp
        L3_3 = L3_3.get_mpattribute
        L4_4 = "Lua:TTExclusion"
        L3_3 = L3_3(L4_4)
      end
    end
  else
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "Lua:TT:TTExclusion"
      L3_3(L4_4)
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "Lua:TT:DetectionThresholdNotMet"
      L3_3(L4_4)
  end
  else
    L3_3 = GetDetectionThresholdMetReason
    L4_4 = L0_0
    L4_4 = L3_3(L4_4)
    if L3_3 then
      mp.set_mpattribute("Lua:TT:DetectionThresholdMet")
      if mp.bitand(L4_4, 1) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!TaintedMachine")
      end
      if mp.bitand(L4_4, 2) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!InjectionHollow")
      end
      if mp.bitand(L4_4, 4) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!InjectKeylog")
      end
      if mp.bitand(L4_4, 8) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!IndirectCmd")
      end
      if mp.bitand(L4_4, 16) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!InjectDiscovery")
      end
      if mp.bitand(L4_4, 32) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!CredDiscovery")
      end
      if mp.bitand(L4_4, 64) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!RemoteService")
      end
      if mp.bitand(L4_4, 128) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!Masquerading")
      end
      if mp.bitand(L4_4, 256) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!SoftwarePacking")
      end
      if mp.bitand(L4_4, 512) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!ThresholdCount")
      end
      if mp.bitand(L4_4, 1024) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!CommandControl")
      end
      if mp.bitand(L4_4, 2048) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!Malware")
      end
      if mp.bitand(L4_4, 4096) ~= 0 then
        mp.set_mpattribute("Lua:TT:Reason!TaintedMachineML")
      end
    else
      if mp.bitand(L4_4, 2147483648) ~= 0 then
        mp.set_mpattribute("Lua:TT:TTExclusion")
      end
      mp.set_mpattribute("Lua:TT:DetectionThresholdNotMet")
    end
  end
  L3_3 = GetTaintLevelHR
  L3_3 = L3_3()
  if L3_3 ~= nil then
    if L3_3 == "Medium" or L3_3 == "High" then
      L4_4 = mp
      L4_4 = L4_4.set_mpattribute
      L4_4("Lua:TT:IsTaintedMachine")
    end
    L4_4 = mp
    L4_4 = L4_4.set_mpattribute
    L4_4("Lua:TT:TaintValue!" .. L3_3)
  end
  L4_4 = GetTaintLevelML
  L4_4 = L4_4()
  if L4_4 ~= nil then
    mp.set_mpattribute("Lua:TT:TaintValueML!" .. L4_4)
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
