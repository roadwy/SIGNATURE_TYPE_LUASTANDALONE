local L2_0, L3_1, L4_2, L5_3, L6_4
for L5_3 = 1, L3_1.NumberOfSections do
  L6_4 = pesecs
  L6_4 = L6_4[L5_3]
  L6_4 = L6_4.Name
  if L6_4 == ".." then
    L6_4 = pesecs
    L6_4 = L6_4[L5_3]
    L6_4 = L6_4.VirtualAddress
    if L6_4 == hstrlog[1].VA - pehdr.ImageBase then
      L6_4 = pevars
      L6_4 = L6_4.epsec
      if L6_4 ~= L5_3 then
        L6_4 = mp
        L6_4 = L6_4.INFECTED
        return L6_4
      end
    end
  end
end
return L2_0
