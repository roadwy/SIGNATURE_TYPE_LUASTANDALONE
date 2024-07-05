local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.image_path
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.image_path)
    if contains(L1_1, {
      "\\papercut mf\\",
      "\\papercut ng\\"
    }) and string.sub(L0_0.image_path, -10) == "pc-app.exe" then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
