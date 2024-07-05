local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
L2_2 = L0_0
L1_1 = L0_0.find
L1_1 = L1_1(L2_2, "drive.google.com/", 1, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
  L1_1 = L1_1(L2_2)
  L2_2 = "IOAVHasGoogleDriveUrl"
  if not MpCommon.QueryPersistContext(L1_1, L2_2) then
    MpCommon.AppendPersistContext(L1_1, L2_2, 100)
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
