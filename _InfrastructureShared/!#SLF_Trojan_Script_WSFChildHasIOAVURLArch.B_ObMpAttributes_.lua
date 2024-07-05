local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.find
  L1_1 = L1_1(L0_0, "http:", 1, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
    if L1_1 then
      if MpCommon.PathToWin32Path(L1_1) == nil then
        return mp.CLEAN
      end
      if MpCommon.PathToWin32Path(L1_1):match("%->.+/") or MpCommon.PathToWin32Path(L1_1):match("%->.+\\") or MpCommon.PathToWin32Path(L1_1):match("%->.+%->") then
        return mp.CLEAN
      end
      if MpCommon.PathToWin32Path(L1_1):find(".zip->", 1, true) or MpCommon.PathToWin32Path(L1_1):find(".rar->", 1, true) or MpCommon.PathToWin32Path(L1_1):find(".7z->", 1, true) or MpCommon.PathToWin32Path(L1_1):find(".tar.gz->", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
