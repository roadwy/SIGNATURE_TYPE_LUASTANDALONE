local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 28 then
  L0_0 = mp
  L0_0 = L0_0.readu_u16
  L1_1 = headerpage
  L2_2 = 5
  L0_0 = L0_0(L1_1, L2_2)
elseif L0_0 ~= 2 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = headerpage
L0_0 = L0_0[29]
if L0_0 == 3 or L0_0 == 103 then
  L1_1 = headerpage
  L1_1 = L1_1[31]
elseif L1_1 ~= 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 34
L2_2 = nil
while true do
  L2_2 = headerpage[L1_1] % 16
  L1_1 = L1_1 + 1
  if headerpage[L1_1] / 128 == 1 then
    if headerpage[L1_1] == 128 and headerpage[L1_1 + 1] == 128 then
      L1_1 = L1_1 + 6
    else
      L1_1 = L1_1 + 2
    end
  end
  if L2_2 == 0 then
    if 1 <= 0 and 5 >= 0 and headerpage[L1_1] / 16 ~= 0 then
      mp.set_mpattribute("LUA:CVE-2017-11882_Condition2")
      return mp.CLEAN
    end
    if 0 < 0 then
    else
      break
    end
  elseif L2_2 == 1 then
    if headerpage[L1_1] / 16 / 4 % 2 == 1 then
      L1_1 = L1_1 + 1
    end
    if headerpage[L1_1] / 16 / 2 % 2 == 1 then
      L1_1 = L1_1 + 1 + headerpage[L1_1] * 3
    end
  elseif L2_2 == 2 then
    L1_1 = L1_1 + 3
  elseif L2_2 == 3 then
    if headerpage[L1_1] > 48 then
      mp.set_mpattribute("LUA:CVE-2017-11882_Condition2")
      return mp.CLEAN
    end
    L1_1 = L1_1 + 3
  elseif L2_2 == 4 then
    L1_1 = L1_1 + 2
    if headerpage[L1_1] / 16 / 2 % 2 == 1 then
      L1_1 = L1_1 + 1 + headerpage[L1_1] * 3
    end
  elseif L2_2 == 5 then
    if headerpage[L1_1 + 3] > 32 or headerpage[L1_1 + 4] > 32 then
      mp.set_mpattribute("Lua:O97M/CVE-2017-0798.A!Matrix")
    end
    L1_1 = L1_1 + 7
  elseif L2_2 == 6 then
    L1_1 = L1_1 + 1
  elseif L2_2 == 7 then
    L1_1 = L1_1 + 1 + headerpage[L1_1] * 3
  elseif L2_2 == 8 then
    if headerpage[L1_1] > 20 then
      mp.set_mpattribute("//Lua:O97M/CVE-2017-11882.A!FontRec")
      return mp.LOWFI
    end
    L1_1 = L1_1 + 2
    while true do
      if not (0 <= 32) or headerpage[L1_1] == 0 then
        break
      end
      L1_1 = L1_1 + 1
    end
    if 0 + 1 > 32 then
      return mp.LOWFI
    end
  elseif L2_2 == 9 then
    if headerpage[L1_1] == 100 then
      L1_1 = L1_1 + 4
    elseif headerpage[L1_1] == 101 then
      L1_1 = L1_1 + 3
    else
      L1_1 = L1_1 + 2
    end
  elseif L2_2 > 14 then
    break
  end
end
return mp.CLEAN
