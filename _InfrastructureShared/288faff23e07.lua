local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "InEmail"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 11 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 11 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readheader
L1_1 = L1_1(0, 12)
if L1_1 == nil then
  return mp.CLEAN
end
if (string.find(L1_1, "\208\207\017\224\161\177\026\225\000\000\000", 1, true) ~= nil or string.find(L1_1, "PK\003\004\020\000\006\000", 1, true) ~= nil) and mp.BMSearchFile(0, L0_0, "V\000B\000A\000_\000P\000R\000O\000J\000E\000C\000T\000\144\000") and 0 <= mp.BMSearchFile(0, L0_0, "V\000B\000A\000_\000P\000R\000O\000J\000E\000C\000T\000\144\000") and L0_0 > mp.BMSearchFile(0, L0_0, "V\000B\000A\000_\000P\000R\000O\000J\000E\000C\000T\000\144\000") then
  return mp.INFECTED
end
return mp.CLEAN
