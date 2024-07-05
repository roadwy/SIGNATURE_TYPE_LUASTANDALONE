local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
if L0_0 ~= nil then
  L1_1 = #L0_0
  if not (L1_1 < 9) then
    L1_1 = L0_0.find
    L1_1 = L1_1(L0_0, "\\users\\", 1, true)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L1_1 = L1_1("%userprofile%")
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if #L1_1 < 9 then
  return mp.CLEAN
end
if string.sub(L0_0, 0, 4) == "\\\\?\\" then
  L0_0 = string.sub(L0_0, 5)
end
if L0_0 == L1_1 then
  if peattributes.isdll then
    mp.set_mpattribute("Lua:SuspiciousFileInUsersFolder.A!dll")
  elseif peattributes.isexe then
    mp.set_mpattribute("Lua:SuspiciousFileInUsersFolder.A!exe")
  end
  return mp.INFECTED
end
return mp.CLEAN
