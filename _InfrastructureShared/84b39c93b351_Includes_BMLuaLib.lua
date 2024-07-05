local L0_0
L0_0 = versioning
L0_0 = L0_0.IsSeville
L0_0 = L0_0()
if not L0_0 then
  L0_0 = versioning
  L0_0 = L0_0.IsServer
  L0_0 = L0_0()
  if not L0_0 then
    L0_0 = MpCommon
    L0_0 = L0_0.IsSampled
    L0_0 = L0_0(11000, true, true, true)
    if L0_0 == false then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[2].utf8p2)
end
if L0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
