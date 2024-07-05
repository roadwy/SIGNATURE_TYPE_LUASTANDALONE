local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 > 2 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.VA
    L1_1 = hstrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.VA
    if pe.contains_va(1, L0_0) ~= true then
      return mp.CLEAN
    end
    if pe.contains_va(1, L1_1) ~= true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
