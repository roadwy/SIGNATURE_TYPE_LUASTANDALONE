local L0_0
L0_0 = {}
L0_0.imagePath = bm.get_imagepath()
L0_0.friendly = MpCommon.IsFriendlyProcess(bm.get_current_process_startup_info().ppid)
L0_0.process_relationships = bm.get_process_relationships()
if this_sigattrlog[1].matched then
  L0_0.BCDPath = this_sigattrlog[1].utf8p1
  L0_0.p2Data = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched then
  L0_0.BCDPath = this_sigattrlog[2].utf8p1
  L0_0.p2Data = this_sigattrlog[2].utf8p2
end
bm.add_related_file(L0_0.BCDPath)
bm.add_related_string("ChangeFileData", safeJsonSerialize(L0_0), bm.RelatedStringBMReport)
return mp.INFECTED
