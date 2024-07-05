local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "VSSAMSI_CallerPID"
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_mpattributevalue
L2_2 = "VSSAMSI_ProcessStartTime"
L1_1 = L1_1(L2_2)
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2, L3_3 = nil, nil
L4_4 = {}
L4_4["powershell.exe"] = true
L4_4["cmd.exe"] = true
L4_4["wscript.exe"] = true
L4_4["cscript.exe"] = true
L5_5 = {}
L5_5["svchost.exe"] = true
L5_5["agentExecutor.exe"] = true
L5_5["iperius.exe"] = true
L5_5["oxibackupd.exe"] = true
L5_5["obndmpd.exe"] = true
L5_5["cpmagentservice.exe"] = true
L6_6 = string
L6_6 = L6_6.format
L7_7 = "pid:%d,ProcessStart:%u"
L6_6 = L6_6(L7_7, L0_0, L1_1)
L7_7 = mp
L7_7 = L7_7.GetProcessCommandLine
L7_7 = L7_7(L6_6)
L2_2 = L7_7
if L2_2 ~= nil then
  L7_7 = {}
  table.insert(L7_7, L6_6)
  if MpCommon.GetPersistContextCountNoPath("vssamsipid") > 0 then
    MpCommon.OverwritePersistContextNoPath("vssamsipid", L7_7, 120)
  else
    MpCommon.SetPersistContextNoPath("vssamsipid", L7_7, 120)
  end
  mp.set_mpattribute(string.format("MpInternal_researchdata=VSSCaller=%s", L2_2))
  L3_3 = mp.GetParentProcInfo(L6_6)
  if L3_3 ~= nil and L3_3.image_path ~= nil then
    mp.set_mpattribute(string.format("MpInternal_researchdata=VSSCallerParent=%s", L3_3.image_path))
    if string.lower(L3_3.image_path:match("([^\\]+)$")) ~= nil and L4_4[string.lower(L3_3.image_path:match("([^\\]+)$"))] and mp.GetParentProcInfo(L3_3.ppid) ~= nil and mp.GetParentProcInfo(L3_3.ppid).image_path ~= nil then
      mp.set_mpattribute(string.format("MpInternal_researchdata=VSSCallerGParent=%s", mp.GetParentProcInfo(L3_3.ppid).image_path))
      if string.lower(mp.GetParentProcInfo(L3_3.ppid).image_path:match("([^\\]+)$")) ~= nil and L5_5[string.lower(mp.GetParentProcInfo(L3_3.ppid).image_path:match("([^\\]+)$"))] then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
