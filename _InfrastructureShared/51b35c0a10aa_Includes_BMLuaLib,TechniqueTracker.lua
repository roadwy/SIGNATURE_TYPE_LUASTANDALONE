local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ppid
if L1_1 == nil then
  return mp.CLEAN
end
TrackPidAndTechniqueBM(L1_1, "T1083", "Discovery_File_Redirection_mt2023", 300)
reportRelatedBmHits()
return mp.INFECTED
