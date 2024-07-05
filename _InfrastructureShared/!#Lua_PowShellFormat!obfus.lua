local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
function L0_0(A0_15)
  return A0_15:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", function(A0_16)
    return "%" .. A0_16
  end)
end
escape_word = L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:PowShellFormat!obfus"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "SCRIPT:PowShellFormat!obfus2"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "SCRIPT:PowShellFormat!obfus3"
    L0_0 = L0_0(L1_1)
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 > 131072 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L2_2 = false
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.readfile
  L2_2 = 0
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L1_1 = L2_2
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.gsub
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    L1_1 = L2_2
    L2_2 = string
    L2_2 = L2_2.gsub
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    L1_1 = L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.gsub
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    L1_1 = L2_2
    L2_2 = string
    L2_2 = L2_2.gsub
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    L1_1 = L2_2
  end
  L2_2 = 0
  for L6_6 in L3_3(L4_4, L5_5) do
    L7_7 = string
    L7_7 = L7_7.match
    L8_8 = L6_6
    L9_9 = "%(\"({%d+}{%d+}.-)\"%-f('.-','.-[^,]')%)"
    L8_8 = L7_7(L8_8, L9_9)
    if L7_7 and L8_8 then
      L9_9 = {}
      for L13_13 in L10_10(L11_11, L12_12) do
        L14_14(L9_9, L13_13)
      end
      for L14_14 in L11_11(L12_12, L13_13) do
        table.insert(L10_10, L14_14)
      end
      if L11_11 == L12_12 then
        for _FORV_16_ = 1, L11_11 do
        end
        L6_6 = L13_13
        L1_1 = L13_13
        L2_2 = L2_2 + 1
      end
    end
  end
  if L2_2 >= 3 then
    L6_6 = "%1"
    L1_1 = L3_3
    L6_6 = ""
    L1_1 = L3_3
    L6_6 = ""
    L1_1 = L3_3
    L6_6 = "%.%1"
    L1_1 = L3_3
    L6_6 = "::%1"
    L1_1 = L3_3
    L6_6 = mp
    L6_6 = L6_6.ADD_VFO_TAKE_ACTION_ON_DAD
    L3_3(L4_4, L5_5, L6_6)
    return L3_3
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
