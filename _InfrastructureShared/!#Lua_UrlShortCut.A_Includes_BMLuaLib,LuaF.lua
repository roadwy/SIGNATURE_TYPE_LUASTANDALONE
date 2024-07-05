local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 256 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L4_4 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2))
if L0_0 == nil then
  return L1_1
end
for L4_4 = L1_1 - 1, 1, -1 do
  if mp.readu_u16(L0_0, L4_4) == 2573 then
    mp.vfo_add_buffer(L0_0:sub(1, L4_4), "[InternetShortcut_FILEDATA]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    if #L0_0 - L4_4 > 48 then
      mp.set_mpattribute("Lua:InternetShortcutHasAppendedData")
    end
    return mp.INFECTED
  end
end
return L1_1
