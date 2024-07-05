local L0_0, L1_1, L2_2
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_connection_string
L2_2 = L2_2()
if L2_2 == nil then
  return mp.CLEAN
end
if L2_2 == "" then
  return mp.CLEAN
end
if tonumber(string.match(L2_2, "DestPort=(%d+);")) < 10050 or tonumber(string.match(L2_2, "DestPort=(%d+);")) > 10063 then
  return mp.CLEAN
end
if L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") == nil then
  return mp.CLEAN
end
if L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") == nil then
  return mp.CLEAN
end
if L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") == nil or L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") ~= ".exe" then
  return mp.CLEAN
end
if string.lower(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\SYSTEM32\\")) and string.lower(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\SYSTEM32\\")) == L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") or string.lower(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\SYSWOW64\\")) and string.lower(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\SYSWOW64\\")) == L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") or string.lower(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\")) and string.lower(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\")) == L1_1:match("(.+\\)([^\\]+)(%.%l%l%l)$") then
  return mp.INFECTED
end
return mp.CLEAN
