local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = ""
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(tostring(headerpage))
  L1_1 = L2_2
else
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(tostring(footerpage))
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, "%z", "")
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, " ", "")
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, "`", "")
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "proxy", 1, true)
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "::", 1, true)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "defaultnetworkcredentials", 1, true)
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(mp.getfilename())
      if string.find(L2_2, "->%(%w+%)") or string.find(L2_2, "->%[%w+%]") then
        mp.set_mpattribute("SCRIPT:Packed")
      end
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
