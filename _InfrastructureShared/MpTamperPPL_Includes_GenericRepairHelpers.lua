local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Name
L1_1 = {}
L1_1["hkcu\\software\\classes\\typelib\\{5477469e-83b1-11d2-8b49-00a0c9b7c9c4}"] = true
L1_1["hkcu\\software\\classes\\wow6432node\\typelib\\{5477469e-83b1-11d2-8b49-00a0c9b7c9c4}"] = true
L1_1["hkcu\\software\\classes\\typelib\\{57dacae6-5313-4e27-b109-e6e3d415730c}"] = true
L1_1["hkcu\\software\\classes\\wow6432node\\typelib\\{57dacae6-5313-4e27-b109-e6e3d415730c}"] = true
L1_1["hkcu\\software\\classes\\typelib\\{a87f050d-3ffd-4682-8e77-34e530624cb4}"] = true
L1_1["hkcu\\software\\classes\\wow6432node\\typelib\\{a87f050d-3ffd-4682-8e77-34e530624cb4}"] = true
L1_1["hkcu\\software\\classes\\typelib\\{c0653e9c-db3b-4e9e-b3ab-b8e1df53972f}"] = true
L1_1["hkcu\\software\\classes\\wow6432node\\typelib\\{c0653e9c-db3b-4e9e-b3ab-b8e1df53972f}"] = true
L1_1["hkcu\\software\\classes\\typelib\\{7071ec00-663b-4bc1-a1fa-b97f3b917c55}"] = true
L1_1["hkcu\\software\\classes\\wow6432node\\typelib\\{7071ec00-663b-4bc1-a1fa-b97f3b917c55}"] = true
L5_5 = 1
L6_6 = true
if L2_2 then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = sysio
    L7_7 = L7_7.RegExpandUserKey
    L7_7 = L7_7(L8_8)
    for L11_11, L12_12 in L8_8(L9_9) do
      L13_13 = sysio
      L13_13 = L13_13.RegOpenKey
      L14_14 = L12_12
      L13_13 = L13_13(L14_14)
      if L13_13 ~= nil then
        L14_14 = pcall
        L14_14 = L14_14(sysio.DeleteRegKey, L13_13, "")
        L14_14 = L14_14 or pcall(Remediation.BtrDeleteRegKey, L12_12)
      end
    end
  end
end
