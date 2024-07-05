local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 7 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = 0
L1_1 = 0
if hstrlog[1].matched then
  L1_1 = L1_1 + 1
  if hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched then
    L0_0 = L0_0 + 1
  end
end
if hstrlog[2].matched then
  L1_1 = L1_1 + 1
  if hstrlog[9].matched or hstrlog[10].matched then
    L0_0 = L0_0 + 1
  end
end
if hstrlog[3].matched then
  L1_1 = L1_1 + 1
  if hstrlog[11].matched then
    L0_0 = L0_0 + 1
  end
end
if L0_0 >= 2 then
  return mp.INFECTED
elseif hstrlog[4].matched and (L1_1 == 3 or L0_0 == 1) then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.AMO")
return mp.CLEAN
