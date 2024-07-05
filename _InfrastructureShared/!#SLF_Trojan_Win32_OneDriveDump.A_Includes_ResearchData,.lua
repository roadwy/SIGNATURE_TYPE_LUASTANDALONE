local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 < 30720000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "OneDriveTelemetryStable.dll"
L3_3 = "\\client\\onedrive\\Product\\UX\\Exe\\obj\\amd64\\OneDrive.pdb"
mp.readprotection(false)
mp.readprotection(true)
if tostring(mp.readfile(0, 200000)):find(L2_2, 1, true) ~= nil and tostring(mp.readfile(0, 200000)):find(L3_3, 1, true) ~= nil then
  if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
    TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1003.001", "credentialdumping", 86400)
  end
  return mp.INFECTED
end
return mp.CLEAN
