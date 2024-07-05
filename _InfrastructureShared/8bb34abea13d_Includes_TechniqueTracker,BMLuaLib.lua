local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.utf8p1
      if L1_1 ~= nil then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = L1_1.find
        L2_2 = L2_2(L1_1, "%.dll$")
        if L2_2 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(L1_1:match("\\([^\\]+)$"))
        if L0_0:find(L2_2, 1, true) then
          if bm.get_current_process_startup_info() and bm.get_current_process_startup_info().command_line ~= nil then
            bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
            TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1036", "masq_regsvr32")
          end
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
