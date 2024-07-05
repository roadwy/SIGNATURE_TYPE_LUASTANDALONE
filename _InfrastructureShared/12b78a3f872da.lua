if mp.getfilesize() > 4000000 or mp.getfilesize() < 10000 then
  return mp.CLEAN
end
if MpCommon.PathToWin32Path(mp.getfilename(mp.FILEPATH_QUERY_FULL)):lower():sub(1, #MpCommon.ExpandEnvironmentVariables("%windir%"):lower()) == MpCommon.ExpandEnvironmentVariables("%windir%"):lower() then
  return mp.CLEAN
end
return mp.INFECTED
