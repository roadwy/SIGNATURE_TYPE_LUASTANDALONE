local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L3_3 = " pid:(%d+) (.+)"
L2_2 = L1_1(L2_2, L3_3)
if L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetPPidFromPid
L4_4 = L1_1
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L2_2, "^ems$")
if L4_4 then
  L4_4 = bm
  L4_4 = L4_4.trigger_sig
  L4_4("AsyncTriggerEMS", "EMS", L3_3)
else
  L4_4 = string
  L4_4 = L4_4.find
  L4_4 = L4_4(L2_2, "^sms:")
  if L4_4 then
    L4_4 = string
    L4_4 = L4_4.match
    L4_4 = L4_4(L2_2, "sms:(.+)")
    bm.trigger_sig("AsyncTriggerSMS", L4_4, L3_3)
  else
    L4_4 = string
    L4_4 = L4_4.find
    L4_4 = L4_4(L2_2, "^exhaustive$")
    if L4_4 then
      L4_4 = bm
      L4_4 = L4_4.trigger_sig
      L4_4("AsyncTriggerProc", "Exhaustive", L3_3)
    end
  end
end
L4_4 = mp
L4_4 = L4_4.INFECTED
return L4_4
