local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if not (L0_0 < 300000) then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
elseif L0_0 > 600000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.p1
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.sub
    L1_1 = L1_1(L0_0, -4)
    if L1_1 == ".dll" then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[4].p1)
    if string.find(L1_1, L0_0) ~= nil then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
