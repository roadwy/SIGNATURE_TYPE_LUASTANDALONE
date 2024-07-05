local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
if L0_0 then
  if not string.find(L0_0, "^c:\\") and not string.find(L0_0, "^\\\\") then
    return mp.CLEAN
  end
  if string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\windows\\", 1, true) or string.find(L0_0, "\\steam", 1, true) or string.find(L0_0, "robloxplayer", 1, true) or string.find(L0_0, "kartrider", 1, true) or string.find(L0_0, "apex", 1, true) or string.find(L0_0, "\\fivem", 1, true) or string.find(L0_0, "\\yandex", 1, true) or string.find(L0_0, "game", 1, true) then
    return mp.CLEAN
  end
  if not MpCommon.QueryPersistContext(L0_0, "ExecutedPENoCert") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
