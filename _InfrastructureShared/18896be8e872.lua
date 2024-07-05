local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.bitand
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 4294967040
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 6291712 and L0_0 ~= 342700288 and L0_0 ~= 393031936 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + 13
L1_1 = L1_1(L2_2, 1023)
L2_2 = 1
while L2_2 < #L1_1 do
  if string.byte(L1_1, L2_2) == 232 then
    L2_2 = L2_2 + 5
  elseif string.byte(L1_1, L2_2) == 104 then
    L2_2 = L2_2 + 5
  elseif string.byte(L1_1, L2_2) == 131 then
    if string.byte(L1_1, L2_2 + 1) == 248 or string.byte(L1_1, L2_2 + 1) == 224 then
      L2_2 = L2_2 + 3
    elseif string.byte(L1_1, L2_2 + 1) ~= 196 or string.byte(L1_1, L2_2 + 2) ~= 4 then
      return mp.CLEAN
    else
      L2_2 = L2_2 + 3
    end
  elseif string.byte(L1_1, L2_2) == 81 then
    L2_2 = L2_2 + 1
  elseif string.byte(L1_1, L2_2) == 80 then
    L2_2 = L2_2 + 1
  elseif string.byte(L1_1, L2_2) == 59 then
    if string.byte(L1_1, L2_2 + 1) ~= 193 then
      return mp.CLEAN
    end
    L2_2 = L2_2 + 2
  elseif string.byte(L1_1, L2_2) == 15 then
    if string.byte(L1_1, L2_2 + 1) == 132 then
      L2_2 = L2_2 + 6
    elseif string.byte(L1_1, L2_2 + 1) == 133 then
      L2_2 = L2_2 + 6
    else
      return mp.CLEAN
    end
  elseif string.byte(L1_1, L2_2) == 235 then
    L2_2 = L2_2 + 2 + string.byte(L1_1, L2_2 + 1)
  elseif string.byte(L1_1, L2_2) == 96 or string.byte(L1_1, L2_2) == 97 or string.byte(L1_1, L2_2) == 83 or string.byte(L1_1, L2_2) == 86 or string.byte(L1_1, L2_2) == 88 or string.byte(L1_1, L2_2) == 89 then
    L2_2 = L2_2 + 1
  elseif string.byte(L1_1, L2_2) == 116 or string.byte(L1_1, L2_2) == 106 or string.byte(L1_1, L2_2) == 117 then
    L2_2 = L2_2 + 2
  elseif string.byte(L1_1, L2_2) == 255 then
    if string.byte(L1_1, L2_2 + 1) ~= 210 and string.byte(L1_1, L2_2 + 1) ~= 208 then
      return mp.CLEAN
    end
    L2_2 = L2_2 + 2
  elseif string.byte(L1_1, L2_2) == 141 then
    if string.byte(L1_1, L2_2 + 1) ~= 157 and string.byte(L1_1, L2_2 + 1) ~= 181 then
      return mp.CLEAN
    end
    L2_2 = L2_2 + 6
  elseif string.byte(L1_1, L2_2) == 100 then
    if string.byte(L1_1, L2_2 + 1) == 255 and string.byte(L1_1, L2_2 + 2) == 53 or string.byte(L1_1, L2_2 + 1) == 137 and string.byte(L1_1, L2_2 + 2) == 37 or string.byte(L1_1, L2_2 + 1) == 143 and string.byte(L1_1, L2_2 + 2) == 5 then
      L2_2 = L2_2 + 7
    else
      return mp.CLEAN
    end
  elseif string.byte(L1_1, L2_2) == 139 then
    if string.byte(L1_1, L2_2 + 1) == 100 and string.byte(L1_1, L2_2 + 2) == 36 then
      L2_2 = L2_2 + 4
    elseif string.byte(L1_1, L2_2 + 1) == 133 then
      L2_2 = L2_2 + 6
    else
      return mp.CLEAN
    end
  elseif string.byte(L1_1, L2_2) == 137 then
    if string.byte(L1_1, L2_2 + 1) ~= 133 then
      return mp.CLEAN
    end
    L2_2 = L2_2 + 6
  else
    return mp.CLEAN
  end
  if 0 + 1 == 0 + 1 and 0 + 1 == 1 and 0 < 0 + 1 and 0 < 0 + 1 and 0 < 0 + 1 and (0 + 1 == 1 + 1 or 0 + 1 >= 10 and 0 + 1 < 1 + 1) then
    return mp.INFECTED
  end
end
return mp.CLEAN
