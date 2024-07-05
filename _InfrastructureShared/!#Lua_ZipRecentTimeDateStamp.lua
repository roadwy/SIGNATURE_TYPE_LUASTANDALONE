local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if not (L0_0 < 128) then
  L0_0 = mp
  L0_0 = L0_0.FOOTERPAGE_SZ
elseif L0_0 < 22 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 67324752 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 11
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 13
L1_1 = L1_1(L2_2, L3_3)
L2_2 = pcall
L3_3 = MpCommon
L3_3 = L3_3.DosTimeToFileTime
L4_4 = L0_0
L3_3 = L2_2(L3_3, L4_4, L1_1)
if not L2_2 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == 0 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.GetCurrentTimeT
L4_4 = L4_4()
if not pcall(MpCommon.TimeTToFileTime, L4_4) then
  return mp.CLEAN
end
if pcall(MpCommon.TimeTToFileTime, L4_4) == nil then
  return mp.CLEAN
end
if L3_3 == nil then
  return mp.CLEAN
end
if L3_3 < pcall(MpCommon.TimeTToFileTime, L4_4) then
  if pcall(MpCommon.TimeTToFileTime, L4_4) - L3_3 <= 5 * 864000000000 then
    if mp.get_mpattribute("SCPT:JarFile") then
      mp.set_mpattribute("//Lua:JarTimeStampLastFiveDays")
    else
      mp.set_mpattribute("//Lua:ZipTimeStampLastFiveDays")
    end
  end
  if pcall(MpCommon.TimeTToFileTime, L4_4) - L3_3 <= 10 * 864000000000 then
    if mp.get_mpattribute("SCPT:JarFile") then
      mp.set_mpattribute("//Lua:JarTimeStampLastTenDays")
    else
      mp.set_mpattribute("//Lua:ZipTimeStampLastTenDays")
    end
  end
  if pcall(MpCommon.TimeTToFileTime, L4_4) - L3_3 <= 30 * 864000000000 then
    if mp.get_mpattribute("SCPT:JarFile") then
      mp.set_mpattribute("//Lua:JarTimeStampLastThirtyDays")
    else
      mp.set_mpattribute("//Lua:ZipTimeStampLastThirtyDays")
    end
  end
  if pcall(MpCommon.TimeTToFileTime, L4_4) - L3_3 <= 365 * 864000000000 then
    if mp.get_mpattribute("SCPT:JarFile") then
      mp.set_mpattribute("//Lua:JarTimeStampLastYear")
    else
      mp.set_mpattribute("//Lua:ZipTimeStampLastYear")
    end
  end
end
return mp.CLEAN
