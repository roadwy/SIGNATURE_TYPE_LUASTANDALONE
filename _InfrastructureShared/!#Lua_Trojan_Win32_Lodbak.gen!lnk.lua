local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Trojan:Win32/Lodbak.gen!lnk"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 1
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 76 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 57
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 7 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 61
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 7 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = tostring
  L1_1 = headerpage
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "\\rundll32.exe%z%z.%z\160%z\\%z")
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.getfilename())
  if string.find(L2_2, "%(%d+gb%)%.lnk") then
    return mp.INFECTED
  end
  return mp.LOWFI
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Trojan:Win32/Lodbak.gen2!lnk"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 1
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 76 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L2_2 = 57
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 7 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = tostring
  L1_1 = headerpage
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "r%zu%zn%zd%zl%zl%z3%z2%z%.%ze%zx%ze%z%z%z.%z%z%z.%z\160%z\\%z")
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.getfilename())
  if string.find(L2_2, "%(%d+gb%)%.lnk") then
    return mp.INFECTED
  end
  return mp.LOWFI
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
