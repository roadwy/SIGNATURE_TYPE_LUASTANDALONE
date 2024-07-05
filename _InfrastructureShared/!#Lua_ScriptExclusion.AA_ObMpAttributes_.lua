local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if L0_0:find("officethememanager.js", 1, true) or L0_0:find("networking-", 1, true) or L0_0:find("onenotewebclipper", 1, true) or L0_0:find("relaunch.wsf", 1, true) or L0_0:find("nmagent", 1, true) then
    return mp.INFECTED
  end
  if not MpCommon.PathToWin32Path(L0_0) then
    return mp.CLEAN
  end
  if MpCommon.PathToWin32Path(L0_0):find("\\inetpub\\wwwroot\\", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
