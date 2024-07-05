local L0_0, L1_1, L2_2, L3_3, L4_4
for L3_3 = 1, L1_1.SIGATTR_LOG_SZ do
  L4_4 = sigattr_tail
  L4_4 = L4_4[L3_3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = sigattr_tail
    L4_4 = L4_4[L3_3]
    L4_4 = L4_4.attribute
    if L4_4 == 16384 then
      L4_4 = string
      L4_4 = L4_4.lower
      L4_4 = L4_4(mp.utf16to8(sigattr_tail[L3_3].wp1))
      if string.find(L4_4, "\\temp\\%a%a%a%a%a%a%a%a.exe") then
        return mp.INFECTED
      end
    end
  end
end
return L0_0
