local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 == 30 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 27 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.SUSPICIOUS
return L0_0
