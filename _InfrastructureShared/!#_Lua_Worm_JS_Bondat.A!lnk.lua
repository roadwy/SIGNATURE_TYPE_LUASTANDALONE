local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
function L0_0(A0_21, A1_22)
  local L2_23, L3_24, L4_25
  L2_23 = string
  L2_23 = L2_23.sub
  L3_24 = A0_21
  L4_25 = 1
  L2_23 = L2_23(L3_24, L4_25, string.len(A1_22))
  L2_23 = L2_23 == A1_22
  return L2_23
end
string_starts = L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Worm:JS/Bondat.A!lnk"
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
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = tostring
  L2_2 = headerpage
  L20_20 = L1_1(L2_2)
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L1_1(L2_2))
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = "\\appdata\\roaming\\%w+\\(%w+%.exe)%z"
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = {
    L3_3,
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    L9_9,
    L10_10,
    L11_11,
    L12_12,
    L13_13
  }
  L3_3 = "win"
  L4_4 = "cmd"
  L5_5 = "disk"
  L6_6 = "dsk"
  L7_7 = "ms"
  L11_11 = "dll"
  L3_3 = {
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    L9_9,
    L10_10,
    L11_11,
    L12_12
  }
  L4_4 = "process"
  L5_5 = "proc"
  L6_6 = "monitor"
  L7_7 = "mon"
  L11_11 = "update"
  L4_4 = {
    L5_5,
    L6_6,
    L7_7
  }
  L5_5 = "64.exe"
  L6_6 = "32.exe"
  L7_7 = ".exe"
  L5_5 = #L2_2
  L6_6 = #L3_3
  L7_7 = #L4_4
  for L11_11 = 1, L5_5 do
    if L12_12 then
      for L15_15 = 1, L6_6 do
        L19_19 = string
        L19_19 = L19_19.len
        L20_20 = L2_2[L11_11]
        L19_19 = L19_19(L20_20)
        L19_19 = L19_19 + 1
        if L16_16 then
          for L19_19 = 1, L7_7 do
            L20_20 = string
            L20_20 = L20_20.sub
            L20_20 = L20_20(L1_1, string.len(L2_2[L11_11]) + string.len(L3_3[L15_15]) + 1)
            if L20_20 == L4_4[L19_19] then
              L20_20 = string
              L20_20 = L20_20.lower
              L20_20 = L20_20(mp.getfilename())
              if string.find(L20_20, "windows explorer%.lnk") then
                return mp.INFECTED
              end
              return mp.LOWFI
            end
          end
        end
      end
    end
  end
  return L8_8
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
