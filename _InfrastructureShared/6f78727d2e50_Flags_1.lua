local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = pehdr
L1_1 = L1_1.ImageBase
L1_1 = 0 + L1_1
if L0_0 >= L1_1 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = pehdr
  L1_1 = L1_1.ImageBase
  L1_1 = 30000 + L1_1
  if L0_0 <= L1_1 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.VA
    L1_1 = pehdr
    L1_1 = L1_1.ImageBase
    L1_1 = 0 + L1_1
    if L0_0 >= L1_1 then
      L0_0 = hstrlog
      L0_0 = L0_0[2]
      L0_0 = L0_0.VA
      L1_1 = pehdr
      L1_1 = L1_1.ImageBase
      L1_1 = 30000 + L1_1
      if L0_0 <= L1_1 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
