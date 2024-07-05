local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.VA
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.VA
  L2_2 = pehdr
  L2_2 = L2_2.ImageBase
  L1_1 = L1_1 + L2_2
  if L0_0 >= L1_1 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.VA
    L1_1 = hstrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.VA
    L1_1 = L1_1 + 100
    L2_2 = pehdr
    L2_2 = L2_2.ImageBase
    L1_1 = L1_1 + L2_2
    if L0_0 <= L1_1 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
