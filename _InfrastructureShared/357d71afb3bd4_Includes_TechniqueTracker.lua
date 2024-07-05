local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = MpCommon
  L2_2 = L2_2.QueryPersistContext
  L3_3 = L1_1
  L4_4 = "PsExecServiceNonStandardName"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L3_3 = mp
    L3_3 = L3_3.GetParentProcInfo
    L4_4 = L0_0.ppid
    L3_3 = L3_3(L4_4)
    if L3_3 ~= nil then
      L4_4 = string
      L4_4 = L4_4.lower
      L4_4 = L4_4(L3_3.image_path)
      if string.find(L4_4, "\\system32\\services.exe", 1, true) then
        TrackPidAndTechnique("CMDHSTR", "T1021.002", "remoteservice_created_b")
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
