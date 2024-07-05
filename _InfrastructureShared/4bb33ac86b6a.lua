local L0_0, L1_1, L2_2, L3_3
L0_0 = ""
L1_1 = string
L1_1 = L1_1.lower
L2_2 = bm
L2_2 = L2_2.get_imagepath
L3_3 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L2_2())
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "\\avclean.exe", 1, true)
else
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p2
  end
end
L2_2 = {
  L3_3,
  "eset",
  "symantec",
  "avtest",
  "general",
  "dyncheck"
}
L3_3 = "defender"
function L3_3(A0_4, A1_5)
  for _FORV_5_ in ipairs(A0_4) do
    if string.find(A1_5, A0_4[_FORV_5_], 1, true) then
      return true
    end
  end
  return false
end
if L0_0 ~= "" and string.find(L0_0, " -m ", 1, true) and string.find(L0_0, " -i ", 1, true) and string.find(L0_0, " -a ", 1, true) and L3_3(L2_2, L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
