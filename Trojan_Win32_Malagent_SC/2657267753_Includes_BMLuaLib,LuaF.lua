local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if not L0_0 then
  return mp.CLEAN
end
if not L1_1 then
  return mp.CLEAN
end
L0_0 = MpCommon.PathToWin32Path(L0_0)
if L0_0 == "" or L0_0 == nil then
  return mp.CLEAN
end
if not StringEndsWith(L0_0, ":\\perflogs") and not StringEndsWith(L0_0, ":\\users\\public\\music") and not StringEndsWith(L0_0, ":\\users\\public") then
  return mp.CLEAN
end
if ({
  ["chrome.exe"] = true,
  ["explorer.exe"] = true,
  ["swchost.exe"] = true,
  ["svchost.exe"] = true,
  ["svvhost.exe"] = true,
  ["svchost.dll"] = true
})[L1_1] then
end
if (true or contains(L1_1, {
  "pagefile%w+%.exe",
  "swapfile%w+%.exe",
  "tmuninst%w+%.exe",
  "toolbox_client_uninst%w+%.exe"
})) and true then
  if mp.IsTrustedFile(false) == true then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
