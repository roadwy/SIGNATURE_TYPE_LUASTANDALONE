local L0_0, L1_1, L2_2, L3_3
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ProductName
if L1_1 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "appstore", 1, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, "app store", 1, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, "application store", 1, true)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, "pc app", 1, true)
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, "?pp store", 1, true)
        end
      end
    end
  elseif L2_2 then
    L2_2 = L0_0.ProductVersion
    L3_3 = L2_2.match
    L3_3 = L3_3(L2_2, "([0-9.]+)")
    if compareProductVersion(L3_3, "1.0.0.1091") == -1 then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
