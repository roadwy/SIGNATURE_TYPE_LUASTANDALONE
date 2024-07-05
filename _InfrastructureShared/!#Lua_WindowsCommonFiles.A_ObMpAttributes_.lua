local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "Lua:WindowsCommonFiles.A!"
if L1_1 == "desktop.ini" then
  mp.set_mpattribute(L2_2 .. "desktop_ini")
  return mp.INFECTED
elseif L1_1 == "thumbs.db" then
  mp.set_mpattribute(L2_2 .. "thumbs_db")
  return mp.INFECTED
end
return mp.CLEAN
