local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L4_4 = "%LocalAppData%\\Microsoft\\Windows\\INetCache"
L5_5 = "%LocalAppData%\\Packages\\Microsoft.StorePurchaseApp_8wekyb3d8bbwe\\AC"
L6_6 = "%LocalAppData%\\Packages\\Microsoft.StorePurchaseApp_8wekyb3d8bbwe\\LocalCache"
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = sysio
  L6_6 = L6_6.ExpandFilePath
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 then
    for L10_10, L11_11 in L7_7(L8_8) do
      L12_12 = L11_11.sub
      L12_12 = L12_12(L11_11, 5, 5)
      if L12_12 ~= "%" then
        L12_12 = nil
        if L11_11:sub(3, 3) == "?" then
          L12_12 = string.lower(L11_11:sub(5))
        else
          L12_12 = string.lower(L11_11)
        end
        if L12_12 and L12_12:sub(2, 10) ~= ":\\windows" and #sysio.FindFiles(L12_12, "mpengine.dll", 9) > 0 then
          return mp.INFECTED
        end
      end
    end
  end
end
return L1_1
