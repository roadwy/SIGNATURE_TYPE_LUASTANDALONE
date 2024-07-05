local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[1]
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[2]
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L0_0 = L1_1[3]
    else
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  if mp.bitand(_FORV_7_.reason_ex, 1) == 1 and IsTacticObservedForPid(_FORV_7_.ppid, "webservice_childproc") then
    TrackPidAndTechniqueBM(L0_0.ppid, "T1190", "webservice_childproc", 7200)
  end
end
if L3_3 then
  return L3_3
end
return L3_3
