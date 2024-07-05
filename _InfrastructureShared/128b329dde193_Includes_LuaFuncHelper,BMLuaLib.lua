local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[6]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[7]
  L0_0 = L1_1.utf8p1
end
L1_1 = bm
L1_1 = L1_1.add_related_file
L1_1(L0_0)
L1_1 = {}
L1_1.image_path = L0_0
L1_1.friendly = MpCommon.IsFriendlyProcess(bm.get_current_process_startup_info().ppid)
L1_1.parents, L1_1.children = bm.get_process_relationships()
L1_1.injection_relationship, L1_1.injectors, L1_1.injected = getCurrentProcessInjectors()
L1_1 = safeJsonSerialize(L1_1)
bm.add_related_string("TelemetryData", L1_1, bm.RelatedStringBMReport)
if versioning.IsSeville() and not L1_1.friendly then
  bm.trigger_sig("UEFILogo.E", L1_1)
end
return mp.INFECTED
