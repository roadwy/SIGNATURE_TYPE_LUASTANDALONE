if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():find(".deb", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
