local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 40000 or L0_0 > 48000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0 % 16
if L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.FILEPATH_QUERY_FULL)
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = MpCommon.PathToWin32Path(L1_1)
L1_1 = string.lower(L1_1)
if L1_1 ~= nil and L1_1:len() > 40 and L1_1:find("c:\\windows\\system32\\config\\", 1, true) then
  if L1_1:find("\\config\\systemprofile\\", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("\\system32\\config\\cache\\", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("\\recoverybin\\", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("\\appdata\\", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("ntuser.dat", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("\\system32\\config\\journal", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("\\system32\\config\\regback", 1, true) then
    return mp.CLEAN
  end
  if L1_1:find("\\system32\\config\\txr", 1, true) then
    return mp.CLEAN
  end
  if select(2, string.gsub(L1_1, "\\", "")) < 5 then
    return mp.CLEAN
  end
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN
