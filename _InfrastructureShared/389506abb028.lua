local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 16
L2_2 = 105
L0_0 = L0_0(L1_1, L2_2)
L1_1 = string
L1_1 = L1_1.byte
L2_2 = L0_0
L1_1 = L1_1(L2_2, 1)
L1_1 = L1_1 + 2
L2_2 = #L0_0
if L1_1 > L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.byte
L2_2 = L2_2(L0_0, L1_1)
if L2_2 == 232 then
  L2_2 = 2
  while L2_2 < #L0_0 do
    if string.byte(L0_0, L2_2) == 61 then
      L2_2 = L2_2 + 5
    elseif string.byte(L0_0, L2_2) == 204 then
      return mp.INFECTED
    elseif string.byte(L0_0, L2_2) == 116 then
      L2_2 = L2_2 + 2
      if L1_1 ~= string.byte(L0_0, L2_2 + 1) + L2_2 then
        return mp.CLEAN
      end
    else
      return mp.CLEAN
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
