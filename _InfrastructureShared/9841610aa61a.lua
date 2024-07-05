local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[6]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[5]
    L0_0 = L0_0.p1
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.p1
    if L0_0 .. L1_1 == "unsafe" then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
