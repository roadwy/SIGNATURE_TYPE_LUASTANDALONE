local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 then
  if MpCommon.PathToWin32Path(L0_0) == nil then
    return mp.CLEAN
  end
  if MpCommon.PathToWin32Path(L0_0):match("%->.+/") or MpCommon.PathToWin32Path(L0_0):match("%->.+\\") or MpCommon.PathToWin32Path(L0_0):match("%->.+%->") then
    return mp.CLEAN
  end
  if MpCommon.PathToWin32Path(L0_0):find(".zip->", 1, true) or MpCommon.PathToWin32Path(L0_0):find(".rar->", 1, true) or MpCommon.PathToWin32Path(L0_0):find(".7z->", 1, true) or MpCommon.PathToWin32Path(L0_0):find(".tar.gz->", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
