local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_FULL)
L0_0 = L0_0 .. "mui"
if sysio.IsFileExists(L0_0) then
  mp.ReportLowfi(L0_0, 4215686520)
end
return mp.CLEAN
