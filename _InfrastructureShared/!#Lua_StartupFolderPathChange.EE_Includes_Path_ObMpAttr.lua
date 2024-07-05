local L0_0, L1_1, L2_2, L3_3
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
L1_1 = MpCommon
L1_1 = L1_1.GetPersistContextNoPath
L2_2 = "BMLua:StartupFolderPathChange.EE"
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = next
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 ~= nil then
    L2_2 = L1_1[1]
  end
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1[1]
L3_3 = #L2_2
if L3_3 <= 3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_FILEPATH)
if L3_3 == nil then
  return mp.CLEAN
end
L3_3 = normalize_path(L3_3)
L2_2 = normalize_path(L2_2)
if L3_3 == nil or #L3_3 <= 3 or L2_2 == nil or #L2_2 <= 4 then
  return mp.CLEAN
end
if L3_3 == L2_2 then
  mp.set_mpattribute("Lua:FileInStartupFolder")
  return mp.INFECTED
end
return mp.CLEAN
