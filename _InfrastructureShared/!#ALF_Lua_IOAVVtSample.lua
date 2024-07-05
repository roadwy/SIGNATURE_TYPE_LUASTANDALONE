local L0_0
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if string.len(L0_0) < 51 then
  return mp.CLEAN
end
if L0_0:sub(1, 51):lower() ~= "https://vtsamples.commondatastorage.googleapis.com/" then
  return mp.CLEAN
end
return mp.INFECTED
