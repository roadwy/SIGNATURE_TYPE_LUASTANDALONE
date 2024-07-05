local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 103000 or L0_0 > 113000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 10 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(headerpage, 1)
if L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L1_1 = L1_1(headerpage, 5)
  if L1_1 == 0 then
    L1_1 = mp
    L1_1 = L1_1.readu_u16
    L1_1 = L1_1(headerpage, 9)
  end
elseif L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(L0_0 - 8000, 4000)
if string.find(L1_1, "IsInfectedRun\000IsPassKavSucess\000IsPassSucess1\000IsPassSucess2\000IsRuninUAC", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
