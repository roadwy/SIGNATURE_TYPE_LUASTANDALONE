local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if not L0_0 then
  return mp.CLEAN
end
if not L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)) then
  return mp.CLEAN
end
L0_0 = MpCommon.PathToWin32Path(L0_0)
if L0_0 == "" or L0_0 == nil then
  return mp.CLEAN
end
if not contains(L0_0, MpCommon.ExpandEnvironmentVariables("%systemdrive%")) then
  return mp.CLEAN
end
if ({
  ["svhost.dll"] = true,
  ["svhost.exe"] = true,
  ["x64win.exe"] = true,
  ["x64win.dll"] = true,
  ["x32win.dll"] = true,
  ["x32win.exe"] = true,
  ["dlihost.exe"] = true
})[L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))] then
  if mp.IsTrustedFile(false) == true then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
