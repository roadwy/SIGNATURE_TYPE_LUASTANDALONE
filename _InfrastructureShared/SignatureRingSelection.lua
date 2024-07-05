if versioning.GetSafeReleaseRing() == 200 then
  database.LoadDBVar(database.DBVAR_DW, "MpSignatureRing", 1, 1)
  database.LoadDBVar(database.DBVAR_DW, "DCO_MpSetIsuInterval", 1, 1)
  database.LoadDBVar(database.DBVAR_DW, "MpEnableSigReleaseHb", 1, 1)
  database.AddStudyId("LUA-RR-SignatureRing1-Internal")
  return
end
if versioning.GetOsVersion() == 655360 and versioning.GetPlatform() == 6 and versioning.GetPlatformVersion() == 19 and versioning.GetPlatformBuild() > 125173760 and MpCommon.IsSampled(16777316, false, false, true) then
  database.LoadDBVar(database.DBVAR_DW, "MpSignatureRing", 1, 1)
  database.LoadDBVar(database.DBVAR_DW, "DCO_MpSetIsuInterval", 1, 1)
  database.LoadDBVar(database.DBVAR_DW, "MpEnableSigReleaseHb", 1, 1)
  database.AddStudyId("LUA-RR-SignatureRing1")
  return
end
if versioning.GetOsVersion() == 655360 and versioning.GetPlatform() == 6 and versioning.GetPlatformVersion() == 19 and versioning.GetPlatformBuild() > 125173760 and MpCommon.IsSampled(16777416, false, false, true) then
  database.LoadDBVar(database.DBVAR_DW, "MpSignatureRing", 2, 1)
  database.LoadDBVar(database.DBVAR_DW, "DCO_MpSetIsuInterval", 1, 1)
  database.LoadDBVar(database.DBVAR_DW, "MpEnableSigReleaseHb", 1, 1)
  database.AddStudyId("LUA-RR-SignatureRing2")
  return
end
database.AddStudyId("LUA-RR-SignatureNotSelected")
