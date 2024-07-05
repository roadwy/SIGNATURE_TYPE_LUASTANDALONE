local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "\\([^\\]+)$")
  if string.sub(L0_0, 1, string.len(L0_0) - string.len(L1_1) - 1):find(":\\windows\\system32", 1, true) or string.sub(L0_0, 1, string.len(L0_0) - string.len(L1_1) - 1):find(":\\windows\\syswow64", 1, true) then
    return mp.CLEAN
  end
  if string.sub(L0_0, 1, string.len(L0_0) - string.len(L1_1) - 1):find(":\\windows\\servicing", 1, true) or string.sub(L0_0, 1, string.len(L0_0) - string.len(L1_1) - 1):find(":\\windows\\winsxs", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
