local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
else
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
      end
    elseif not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[6]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[7]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[8]
          L0_0 = L0_0.matched
        end
      elseif not L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[9]
        L0_0 = L0_0.matched
      end
    end
end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
