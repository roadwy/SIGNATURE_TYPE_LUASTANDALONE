local L0_0, L1_1, L2_2
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
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L2_2 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = #L0_0
  if not (L1_1 < 9) then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, "\\users\\", 1, true)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, "\\users\\(.+)$")
if L1_1 ~= nil then
  L2_2 = #L1_1
  if not (L2_2 < 1) then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "\\", 1, true)
  end
elseif L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L2_2 = L2_2(L0_0, 0, 4)
if L2_2 == "\\\\?\\" then
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L0_0, 5)
  L0_0 = L2_2
end
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L0_0, "(.+)\\users\\.+$")
if L2_2 == nil or #L2_2 < 1 or string.find(L2_2, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
if peattributes.isdll then
  mp.set_mpattribute("Lua:SuspiciousFileInUsersFolder.B!dll")
elseif peattributes.isexe then
  mp.set_mpattribute("Lua:SuspiciousFileInUsersFolder.B!exe")
end
return mp.INFECTED
