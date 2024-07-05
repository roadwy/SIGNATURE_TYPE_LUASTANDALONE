local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if mp.getfilesize() < 393216 then
  return mp.CLEAN
end
if string.find(L0_0, "check#%d%d%d%d%d+%.exe$") ~= nil or string.find(L0_0, "evoucher%.exe$") ~= nil or string.find(L0_0, "paid_invoice%.exe$") ~= nil or string.find(L0_0, "itvpn%.exe$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
