local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = bm_AddRelatedFileFromCommandLine
  L2_2 = L0_0
  L1_1(L2_2, nil)
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1105", "remotedropexe_childproc")
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
