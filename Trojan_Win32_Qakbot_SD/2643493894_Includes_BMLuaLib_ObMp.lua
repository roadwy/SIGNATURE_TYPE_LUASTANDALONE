local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.BasePath
if L1_1 then
  L1_1 = contains
  L1_1 = L1_1(L0_0.BasePath, "cmd.exe")
  if L1_1 then
    L1_1 = L0_0.Arguments
    L1_1 = L1_1 or nil
    if L1_1 == nil then
      return mp.CLEAN
    end
    if L1_1:gsub("&&", "") > 3 and contains(L1_1, "curl%.?e?x?e?%s+.*https?.*wscript%.?e?x?e?", false) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
