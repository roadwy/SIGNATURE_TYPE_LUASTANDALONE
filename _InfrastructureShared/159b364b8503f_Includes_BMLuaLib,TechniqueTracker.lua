local L0_0, L1_1, L2_2
L2_2 = ""
if this_sigattrlog[9].matched then
  L1_1 = this_sigattrlog[9].ppid
  L0_0, _ = string.find(this_sigattrlog[9].utf8p1, "/bash", 1, true)
  if L0_0 ~= nil and sysio.IsFileExists("/run/yum.pid") then
    return mp.CLEAN
  end
  if isParentPackageManager(L1_1) then
    return mp.CLEAN
  end
end
if this_sigattrlog[10].matched then
  L2_2 = "T1546.004"
elseif this_sigattrlog[11].matched then
  L2_2 = "T1543.002"
elseif this_sigattrlog[12].matched then
  L2_2 = "T1543"
elseif this_sigattrlog[13].matched then
  L2_2 = "T1546"
elseif this_sigattrlog[14].matched then
  L2_2 = "T1547.006"
elseif this_sigattrlog[15].matched then
  L2_2 = "T1037.004"
elseif this_sigattrlog[16].matched then
  L2_2 = "T1053.003"
else
  return mp.CLEAN
end
if L1_1 ~= nil then
  TrackPidAndTechniqueBM(L1_1, L2_2, "Persistence")
end
reportRelatedBmHits()
addRelatedProcess()
return mp.INFECTED
