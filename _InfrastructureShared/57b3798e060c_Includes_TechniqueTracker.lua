local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.ppid
    L1_1 = IsTacticObservedForPid
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "webshell_parent")
    if L1_1 then
      L1_1 = bm
      L1_1 = L1_1.get_process_relationships
      L2_2 = L1_1()
      for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
        TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1505.003", "webshell_childproc", 28800)
        bm.add_threat_process(_FORV_7_.ppid)
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
