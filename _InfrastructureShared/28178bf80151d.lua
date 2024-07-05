local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4000000 or L0_0 < 4000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L1_1 = L1_1("pea_ismsil")
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L1_1 = L1_1("PEPCODE:HasDigitalSignature")
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.VA
  if L1_1 ~= -1 then
    L1_1 = pe
    L1_1 = L1_1.mmap_va
    L1_1 = L1_1(hstrlog[3].VA, 30)
    if string.find(L1_1, "H\133\192", 1, true) ~= nil then
      return mp.CLEAN
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
