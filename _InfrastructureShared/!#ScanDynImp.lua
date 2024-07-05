local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = pe
L0_0 = L0_0.get_postemu_sigattr_log_head_size
L0_0 = L0_0()
if L0_0 > 64 then
  L0_0 = 64
end
L1_1 = ""
for L5_5 = 1, L0_0 do
  L6_6 = pe
  L6_6 = L6_6.get_postemu_sigattr_log_head
  L7_7 = L5_5
  L6_6 = L6_6(L7_7)
  L7_7 = L6_6.attribute
  if L7_7 == 12320 then
    L7_7 = L6_6.p1
    if L7_7 ~= nil then
      L7_7 = L6_6.p1
    elseif L7_7 == "" then
      L7_7 = mp
      L7_7 = L7_7.CLEAN
      return L7_7
    end
    L7_7 = string
    L7_7 = L7_7.len
    L8_8 = L6_6.p1
    L7_7 = L7_7(L8_8)
    if L7_7 >= 256 then
      L7_7 = mp
      L7_7 = L7_7.CLEAN
      return L7_7
    end
    L7_7 = string
    L7_7 = L7_7.lower
    L8_8 = L6_6.p1
    L7_7 = L7_7(L8_8)
    L8_8 = crypto
    L8_8 = L8_8.CRC32Buffer
    L9_9 = -1
    L8_8 = L8_8(L9_9, L7_7, 0, #L7_7)
    L9_9 = string
    L9_9 = L9_9.char
    L9_9 = L9_9(crypto.bitand(L8_8, 255), crypto.bitand(crypto.shr32(L8_8, 8), 255), crypto.bitand(crypto.shr32(L8_8, 16), 255), crypto.shr32(L8_8, 24))
    L1_1 = L1_1 .. L9_9
  end
end
if L2_2 <= 1 then
  return L2_2
end
L5_5 = #L1_1
L5_5 = L2_2
L3_3(L4_4)
L5_5 = L3_3
L6_6 = L2_2
L6_6 = L4_4(L5_5, L6_6)
if L4_4 then
  L7_7 = mp
  L7_7 = L7_7.changedetectionrecid
  L8_8 = L6_6
  L7_7(L8_8)
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
