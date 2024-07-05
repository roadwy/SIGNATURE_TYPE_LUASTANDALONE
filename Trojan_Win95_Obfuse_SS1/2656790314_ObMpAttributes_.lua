local L0_0
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, ".sbs/lander/", 1, true) and string.find(L0_0, "download.php", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
