local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 == nil then
    L1_1 = string
    L1_1 = L1_1.len
    L1_1 = L1_1(L0_0)
    if L1_1 < 3 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(L0_0))
  L0_0 = L1_1
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "(.-)[^\\]-[^\\%.]+$")
  if L1_1 == nil and string.len(L1_1) < 3 then
    return mp.CLEAN
  end
  if ({
    [string.lower(mp.ContextualExpandEnvironmentVariables("%localappdata%\\microsoft\\windows\\"))] = true,
    [string.lower(mp.ContextualExpandEnvironmentVariables("%localappdata%\\microsoft\\"))] = true,
    [string.lower(MpCommon.ExpandEnvironmentVariables("%system%\\config\\systemprofile\\appdata\\local\\microsoft\\windows\\"))] = true,
    [string.lower(MpCommon.ExpandEnvironmentVariables("%system%\\config\\systemprofile\\appdata\\local\\microsoft\\"))] = true
  })[L1_1] then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
