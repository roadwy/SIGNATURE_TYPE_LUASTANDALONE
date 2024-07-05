local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.hitcount
if L0_0 == 0 then
  L0_0 = hstrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.hitcount
  if L0_0 == 0 then
    L0_0 = hstrlog
    L0_0 = L0_0[4]
    L0_0 = L0_0.hitcount
    if L0_0 == 0 then
      L0_0 = hstrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.hitcount
      if L0_0 == 0 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  end
end
L0_0 = hstrlog
L0_0 = L0_0[6]
L0_0 = L0_0.hitcount
if L0_0 == 0 then
  L0_0 = hstrlog
  L0_0 = L0_0[7]
  L0_0 = L0_0.hitcount
  if L0_0 == 0 then
    L0_0 = hstrlog
    L0_0 = L0_0[8]
    L0_0 = L0_0.hitcount
    if L0_0 == 0 then
      L0_0 = hstrlog
      L0_0 = L0_0[9]
      L0_0 = L0_0.hitcount
      if L0_0 == 0 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  end
end
L0_0 = hstrlog
L0_0 = L0_0[10]
L0_0 = L0_0.hitcount
if L0_0 == 0 then
  L0_0 = hstrlog
  L0_0 = L0_0[11]
  L0_0 = L0_0.hitcount
  if L0_0 == 0 then
    L0_0 = hstrlog
    L0_0 = L0_0[12]
    L0_0 = L0_0.hitcount
    if L0_0 == 0 then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = hstrlog
L0_0 = L0_0[13]
L0_0 = L0_0.hitcount
if L0_0 == 0 then
  L0_0 = hstrlog
  L0_0 = L0_0[14]
  L0_0 = L0_0.hitcount
  if L0_0 == 0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
