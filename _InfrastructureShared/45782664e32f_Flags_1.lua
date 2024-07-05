local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.hasstandardentry
if L0_0 ~= true then
  L0_0 = pehdr
  L0_0 = L0_0.Subsystem
elseif L0_0 == 1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 10 then
  L0_0 = mp
  L0_0 = L0_0.SUSPICIOUS
  return L0_0
end
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
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[6]
      L0_0 = L0_0.matched
    end
  end
end
L1_1 = peattributes
L1_1 = L1_1.reads_vdll_code
if L1_1 and L0_0 then
  L1_1 = mp
  L1_1 = L1_1.LOWFI
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
