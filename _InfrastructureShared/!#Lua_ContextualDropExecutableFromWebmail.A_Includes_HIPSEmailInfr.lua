local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L1_1 = mp
L1_1 = L1_1.GetScanSource
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.SCANSOURCE_IOAV_WEB
if L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = IsWebmailDownloadURLNew
L2_2 = L2_2()
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L2_2(L3_3, L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
L3_3 = string
L3_3 = L3_3.len
L3_3 = L3_3(L2_2)
if L3_3 < 4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L2_2, -4)
L3_3 = L3_3.match
L3_3 = L3_3(L3_3, "%.(%w+)$")
if L3_3 == nil then
  return mp.CLEAN
end
if IsSuspiciousFileExt(L3_3) then
  mp.set_mpattribute("MpDisableCaching")
  if not MpCommon.QueryPersistContext(mp.getfilename(), L0_0) then
    MpCommon.AppendPersistContext(mp.getfilename(), L0_0, 0)
  end
  mp.SetHipsRule("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKACCESS
elseif IsArchiveFileExt(L3_3) then
  mp.set_mpattribute("MpDisableCaching")
  if mp.get_mpattribute("Lua:ZipHasEncryptedFileWithExeExtension") or mp.get_mpattribute("Lua:RarHasEncryptedFileWithExeExtension") then
    if not MpCommon.QueryPersistContext(mp.getfilename(), L0_0) then
      MpCommon.AppendPersistContext(mp.getfilename(), L0_0, 0)
    end
    mp.SetHipsRule("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
    return mp.BLOCKACCESS
  end
  MpCommon.AppendPersistContext(mp.getfilename(), "ContextualDropEncryptedArchiveByEmail", 300)
  if mp.getfilesize() > 10485760 then
    return mp.CLEAN
  end
  mp.set_mpattribute("//Lua:ContextualDropExecutableFromWebmail.B")
  mp.set_mpattribute("MpForceScanArchives")
end
return mp.CLEAN
