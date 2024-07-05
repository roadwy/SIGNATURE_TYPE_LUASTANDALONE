local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
  if L0_0 == nil then
    return mp.CLEAN
  end
  if L0_0:sub(1, 8) == "\\device\\" then
    L0_0 = MpCommon.PathToWin32Path(L0_0)
  end
  if L0_0 == nil then
    return mp.CLEAN
  end
  L0_0 = string.lower(L0_0)
  if IsKeyInRollingQueue("SuspExeFileDroppedViaSMB", L0_0, true) then
    return mp.INFECTED
  end
  if IsKeyInRollingQueue("SuspFileDroppedViaSMB", L0_0, true) then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
