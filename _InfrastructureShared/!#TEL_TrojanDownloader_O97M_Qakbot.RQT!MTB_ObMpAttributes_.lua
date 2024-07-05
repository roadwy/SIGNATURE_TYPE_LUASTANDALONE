local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 110592 or L0_0 > 458752 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
if L0_0 > 404144 then
  L1_1 = tostring
  L1_1 = L1_1(mp.readfile(403376, 200))
  L1_1 = string.lower(L1_1)
  if string.match(L1_1, "regsvr32 %-silent %.%.\\") ~= nil then
    return mp.INFECTED
  end
elseif L0_0 > 407504 then
  L1_1 = tostring
  L1_1 = L1_1(mp.readfile(406992, 200))
  L1_1 = string.lower(L1_1)
  if string.match(L1_1, "regsvr32 %-silent %.%.\\") ~= nil then
    return mp.INFECTED
  end
elseif L0_0 > 110592 then
  L1_1 = tostring
  L1_1 = L1_1(mp.readfile(110128, 200))
  L1_1 = string.lower(L1_1)
  if string.match(L1_1, "regsvr32 %-silent %.%.\\") ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
