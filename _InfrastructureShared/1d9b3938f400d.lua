local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 50000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if string.find(string.lower(L0_0), "\\program files", 1, true) or string.find(string.lower(L0_0), "teamviewer", 1, true) or string.find(string.lower(L0_0), "\\steam", 1, true) or string.find(string.lower(L0_0), "torrent.exe", 1, true) or string.find(string.lower(L0_0), "game", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN