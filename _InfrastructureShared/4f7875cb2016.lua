local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isvbpcode
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.dirty_wx_branch
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
