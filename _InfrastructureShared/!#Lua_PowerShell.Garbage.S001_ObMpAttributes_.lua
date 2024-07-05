local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 65536 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfooter
L2_2 = 3328
L1_1 = L1_1(L2_2, 768)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L2_2 = L2_2(L1_1)
if L2_2 == nil or L2_2 == "" then
  return mp.CLEAN
end
if string.match(L2_2, "if %(%-?%d%d%d%d+ %-ge %-?%d%d%d%d+%) %{") ~= nil and string.match(L2_2, "if %(%-?%d%d%d%d+ %-ge %-?%d%d%d%d+%) %{") ~= "" then
  mp.set_mpattribute("Lua:PowerShell.Garbage.S001")
  return mp.INFECTED
end
if string.match(L2_2, "if %(%-?%d%d%d%d+ %-le %-?%d%d%d%d+%) %{") ~= nil and string.match(L2_2, "if %(%-?%d%d%d%d+ %-le %-?%d%d%d%d+%) %{") ~= "" then
  mp.set_mpattribute("Lua:PowerShell.Garbage.S001")
  return mp.INFECTED
end
if string.match(L2_2, "if %(%-?%d%d%d%d+ %-lt %-?%d%d%d%d+%) %{") ~= nil and string.match(L2_2, "if %(%-?%d%d%d%d+ %-lt %-?%d%d%d%d+%) %{") ~= "" then
  mp.set_mpattribute("Lua:PowerShell.Garbage.S001")
  return mp.INFECTED
end
if string.match(L2_2, "if %(%-?%d%d%d%d+ %-gt %-?%d%d%d%d+%) %{") ~= nil and string.match(L2_2, "if %(%-?%d%d%d%d+ %-gt %-?%d%d%d%d+%) %{") ~= "" then
  mp.set_mpattribute("Lua:PowerShell.Garbage.S001")
  return mp.INFECTED
end
if string.match(L2_2, "if %(%-?%d%d%d%d+ %-eq %-?%d%d%d%d+%) %{") ~= nil and string.match(L2_2, "if %(%-?%d%d%d%d+ %-eq %-?%d%d%d%d+%) %{") ~= "" then
  mp.set_mpattribute("Lua:PowerShell.Garbage.S001")
  return mp.INFECTED
end
if string.match(L2_2, "if %(%-?%d%d%d%d+ %-ne %-?%d%d%d%d+%) %{") ~= nil and string.match(L2_2, "if %(%-?%d%d%d%d+ %-ne %-?%d%d%d%d+%) %{") ~= "" then
  mp.set_mpattribute("Lua:PowerShell.Garbage.S001")
  return mp.INFECTED
end
return mp.CLEAN
