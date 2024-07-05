local L0_0
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
    bm.add_related_string("AdditionalInfo", L0_0, bm.RelatedStringBMReport)
    if bm.get_current_process_startup_info() then
      add_related_anomalydetections(bm.get_current_process_startup_info().ppid)
    end
    add_parents_mp()
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
