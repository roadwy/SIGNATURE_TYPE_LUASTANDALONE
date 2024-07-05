local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[12]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[13]
  L0_0 = L0_0.matched
else
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[14]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[15]
      L0_0 = L0_0.matched
    end
end
elseif L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.no_security
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
