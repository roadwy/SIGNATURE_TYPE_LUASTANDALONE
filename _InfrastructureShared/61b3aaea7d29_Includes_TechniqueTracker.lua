local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.ppid
    if L0_0 == nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = TrackPidAndTechniqueBM
    L2_2 = L0_0
    L1_1(L2_2, "iis_exch_web", "iis_exch_web", 28800)
    L1_1 = bm
    L1_1 = L1_1.get_process_relationships
    L2_2 = L1_1()
    for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
      TrackPidAndTechniqueBM(_FORV_7_.ppid, "iis_exch_childproc", "iis_exch_childproc", 28800)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
