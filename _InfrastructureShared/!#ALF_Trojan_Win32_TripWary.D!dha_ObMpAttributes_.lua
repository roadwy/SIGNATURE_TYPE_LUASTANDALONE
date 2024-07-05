local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "ALF:Trojan:Win32/TripWary.C!dha"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 20 or L0_0 > 1024 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
function L1_1(A0_15)
  local L1_16, L2_17, L3_18, L4_19, L5_20, L6_21, L7_22, L8_23, L9_24, L10_25, L11_26, L12_27
  L1_16 = string
  L1_16 = L1_16.rep
  L2_17 = " "
  L3_18 = 16
  L1_16 = L1_16(L2_17, L3_18)
  L3_18 = A0_15
  L2_17 = A0_15.match
  L4_19 = ".(%x%x%x%x%x%x%x%x).(%x%x%x%x).(%x%x%x%x).(%x%x)(%x%x).(%x%x)(%x%x)(%x%x)(%x%x)(%x%x)(%x%x)"
  L12_27 = L2_17(L3_18, L4_19)
  mp.writeu_u32(L1_16, 1, tonumber(L2_17, 16))
  mp.writeu_u16(L1_16, 5, tonumber(L3_18, 16))
  mp.writeu_u16(L1_16, 7, tonumber(L4_19, 16))
  mp.writeu_u8(L1_16, 9, tonumber(L5_20, 16))
  mp.writeu_u8(L1_16, 10, tonumber(L6_21, 16))
  mp.writeu_u8(L1_16, 11, tonumber(L7_22, 16))
  mp.writeu_u8(L1_16, 12, tonumber(L8_23, 16))
  mp.writeu_u8(L1_16, 13, tonumber(L9_24, 16))
  mp.writeu_u8(L1_16, 14, tonumber(L10_25, 16))
  mp.writeu_u8(L1_16, 15, tonumber(L11_26, 16))
  mp.writeu_u8(L1_16, 16, tonumber(L12_27, 16))
  return L1_16
end
uuidToBytes = L1_1
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = 16
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 16
L4_4 = L0_0 - 16
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = true
L3_3(L4_4)
if L2_2 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.RegOpenKey
  L4_4 = "HKLM\\SYSTEM\\HardwareConfig"
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    L4_4 = sysio
    L4_4 = L4_4.GetRegValueAsString
    L5_5 = L3_3
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L5_5 = L4_4.len
      L5_5 = L5_5(L6_6)
      if L5_5 == 38 then
        L5_5 = uuidToBytes
        L5_5 = L5_5(L6_6)
        for L9_9 = 1, #L5_5 do
          L10_10 = mp
          L10_10 = L10_10.writeu_u8
          L14_14 = L5_5
          L14_14 = L9_9 - 1
          L10_10(L11_11, L12_12, L13_13)
        end
        L9_9 = 0
        L10_10 = 16
        for L14_14 = 1, #L2_2 do
          L9_9 = mp.bitxor(L7_7, L8_8)
        end
        L14_14 = #L6_6
        if L1_1 == L11_11 then
          L14_14 = L6_6
          L14_14 = L12_12(L13_13, L14_14)
          L11_11(L12_12, L13_13, L14_14, L12_12(L13_13, L14_14))
          return L11_11
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
