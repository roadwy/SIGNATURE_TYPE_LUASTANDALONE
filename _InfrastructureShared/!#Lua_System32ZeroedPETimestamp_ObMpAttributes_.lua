local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.TimeDateStamp
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 3000000 then
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L1_1 = L1_1(mp.FILEPATH_QUERY_FULL)
    L1_1 = string.lower(MpCommon.PathToWin32Path(L1_1))
    if L1_1 ~= nil and L1_1:find("c:\\windows\\system32\\", 1, true) then
      if L1_1:find("\\driverstore\\filerepository\\", 1, true) then
        return mp.CLEAN
      end
      if L1_1:find("\\spool\\drivers\\x64\\3\\", 1, true) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
