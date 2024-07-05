local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L2_2 = L0_0
    L1_1 = L0_0.match
    L2_2 = L1_1(L2_2, "(.*)|(.*)")
    if L1_1 and L2_2 then
      bm.add_related_string("serverName", L1_1, bm.RelatedStringBMReport)
      bm.add_related_string("tamperingAlert", L2_2, bm.RelatedStringBMReport)
      if bm.get_current_process_startup_info() then
        bm.add_related_string("appName", getWebApplicationType(bm.get_current_process_startup_info().ppid), bm.RelatedStringBMReport)
      end
      reportSessionInformationInclusive()
      bm_AddRelatedFileFromCommandLine("bm")
      add_parents()
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
