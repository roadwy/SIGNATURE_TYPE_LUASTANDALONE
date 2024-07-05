local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 == 1 then
  L0_0 = nil
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[4]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[5]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[6]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[7]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[7]
    L0_0 = L1_1.VA
  end
  if L0_0 ~= nil then
    L1_1 = "HSTR:VirTool:Win32/Obfuscator.WU.offset_"
    L1_1 = L1_1 .. string.format("%.08x", L0_0)
    mp.set_mpattribute(L1_1)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
