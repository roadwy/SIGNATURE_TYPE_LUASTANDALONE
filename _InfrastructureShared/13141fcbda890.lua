local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[13]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[14]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[13]
    L1_1 = L1_1.p1
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[14].p1)
    if L0_0 and string.find(L0_0, "^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$") and L1_1 and string.len(L1_1) > 24 and string.find(L1_1, "^/[%w/_%-=]+$") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
