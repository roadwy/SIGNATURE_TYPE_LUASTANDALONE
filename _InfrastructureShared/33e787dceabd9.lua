local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 == 6 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L0_0 = L0_0 + 98
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.VA
  if L0_0 == L1_1 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.VA
    L0_0 = L0_0 + 162
    L1_1 = hstrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.VA
    if L0_0 == L1_1 then
      L0_0 = hstrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.VA
      L0_0 = L0_0 + 160
      L1_1 = hstrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.VA
      if L0_0 == L1_1 then
        L0_0 = hstrlog
        L0_0 = L0_0[4]
        L0_0 = L0_0.VA
        L0_0 = L0_0 + 160
        L1_1 = hstrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.VA
        if L0_0 == L1_1 then
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.hitcount
          if L0_0 > 23 then
            L0_0 = mp
            L0_0 = L0_0.INFECTED
            return L0_0
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
