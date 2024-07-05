local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = string
L0_0 = L0_0.find
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L8_8 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2())
L2_2 = ".htaccess"
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= nil then
  L0_0 = mp
  L0_0 = L0_0.GetBruteMatchData
  L0_0 = L0_0()
  L1_1 = 256
  L2_2 = ""
  L3_3 = L0_0.is_header
  if L3_3 then
    L3_3 = tostring
    L3_3 = L3_3(L4_4)
    L3_3 = L3_3.sub
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    L2_2 = L3_3
  else
    L3_3 = tostring
    L3_3 = L3_3(L4_4)
    L3_3 = L3_3.sub
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    L2_2 = L3_3
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
  L3_3 = {
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8
  }
  L7_7 = "x-httpd-php .gif"
  L8_8 = "x-httpd-php .htaccess"
  for L7_7, L8_8 in L4_4(L5_5) do
    if string.find(L2_2, L8_8, 1, true) then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
