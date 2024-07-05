local L0_0, L1_1, L2_2
L0_0 = "MpUefiGrubCheck"
L1_1 = "MpUefiGrubCfg"
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not L2_2 or #L2_2 < 8 then
  return mp.CLEAN
end
if L2_2:sub(-8) == "grub.cfg" then
  MpCommon.AppendPersistContextNoPath(L0_0, L1_1, 60)
  return mp.INFECTED
end
return mp.CLEAN
