local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[8]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[9]
    L0_0 = L0_0.matched
    if not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[10]
      L0_0 = L0_0.matched
      if not L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[11]
        L0_0 = L0_0.matched
      end
    end
  end
end
L1_1 = hstrlog
L1_1 = L1_1[12]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[13]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[14]
    L1_1 = L1_1.matched
    if not L1_1 then
      L1_1 = hstrlog
      L1_1 = L1_1[15]
      L1_1 = L1_1.matched
      if not L1_1 then
        L1_1 = hstrlog
        L1_1 = L1_1[16]
        L1_1 = L1_1.matched
        if not L1_1 then
          L1_1 = hstrlog
          L1_1 = L1_1[17]
          L1_1 = L1_1.matched
        end
      end
    end
  end
end
if L0_0 and L1_1 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
