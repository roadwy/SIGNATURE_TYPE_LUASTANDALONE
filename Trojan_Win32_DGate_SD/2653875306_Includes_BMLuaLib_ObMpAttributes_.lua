local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
L1_1 = isnull
L1_1 = L1_1(L0_0)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.BasePath
if L1_1 then
  L1_1 = contains
  L1_1 = L1_1(L0_0.BasePath, "cmd.exe")
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.Arguments
L1_1 = L1_1 or nil
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = L1_1:lower()
if L1_1:gsub("||", "") > 2 and L1_1:gsub("&", "") > 2 then
  if not contains(L1_1, {
    "p\"?i\"?n\"?g\"?",
    "e\"?c\"?h\"?o\"?"
  }, false) then
    return mp.CLEAN
  end
  if not contains(L1_1, {
    "c\"?s\"?c\"?r\"?i\"?p\"?t\"?",
    "w\"?s\"?c\"?r\"?i\"?p\"?t\"?",
    "r\"?u\"?n\"?d\"?l\"?l\"?3\"?2\"?"
  }, false) then
    return mp.CLEAN
  end
  if contains(L1_1, "c\"?u\"?r\"?l\"?%.?e?\"?x?\"?e?\"?%s+.*h\"?t\"?t\"?p\"?s?\"?", false) then
    return mp.INFECTED
  end
end
return mp.CLEAN
