local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_HIGH_RID
if L1_1 >= L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "\\windowsapps\\", 1, true)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "\\appdata\\local\\packages\\", 1, true)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 4294967295
L3_3 = nil
if this_sigattrlog[1].matched then
  L3_3 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p1)
  if L3_3 ~= nil then
    L2_2 = sysio.GetFileAttributes(L3_3)
    if L2_2 ~= nil and L2_2 ~= 4294967295 and mp.bitand(L2_2, 1024) == 1024 then
      bm.add_related_file(L3_3)
      return mp.INFECTED
    end
  end
end
L2_2 = 4294967295
L3_3 = nil
if this_sigattrlog[2].matched then
  L3_3 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1)
  if L3_3 ~= nil then
    L2_2 = sysio.GetFileAttributes(L3_3)
    if L2_2 ~= nil and L2_2 ~= 4294967295 and mp.bitand(L2_2, 1024) == 1024 then
      bm.add_related_file(L3_3)
      return mp.INFECTED
    end
  end
end
L2_2 = 4294967295
L3_3 = nil
if this_sigattrlog[3].matched then
  L3_3 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1)
  if L3_3 ~= nil then
    L2_2 = sysio.GetFileAttributes(L3_3)
    if L2_2 ~= nil and L2_2 ~= 4294967295 and mp.bitand(L2_2, 1024) == 1024 then
      return mp.INFECTED
    end
  end
end
L2_2 = 4294967295
L3_3 = nil
if this_sigattrlog[4].matched then
  L3_3 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[4].utf8p1)
  if L3_3 ~= nil then
    L2_2 = sysio.GetFileAttributes(L3_3)
    if L2_2 ~= nil and L2_2 ~= 4294967295 and mp.bitand(L2_2, 1024) == 1024 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
