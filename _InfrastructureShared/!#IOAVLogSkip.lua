local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  return A1_6 == "" or string.sub(A0_5, -string.len(A1_6)) == A1_6
end
L1_1 = skip
L1_1 = L1_1.GetScanSource
L1_1 = L1_1()
L2_2 = skip
L2_2 = L2_2.SCANSOURCE_IOAV_WEB
if L1_1 ~= L2_2 then
  L2_2 = skip
  L2_2 = L2_2.SCANSOURCE_IOAV_FILE
  if L1_1 ~= L2_2 then
    L2_2 = 0
    return L2_2
  end
end
L2_2 = skip
L2_2 = L2_2.IOAVGetProcessPath
L2_2 = L2_2()
if L2_2 == nil then
  L3_3 = 0
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = L0_0
L4_4 = L2_2
L3_3 = L3_3(L4_4, "\\winword.exe")
if L3_3 then
  L3_3 = 1
  return L3_3
end
L3_3 = L0_0
L4_4 = L2_2
L3_3 = L3_3(L4_4, "\\excel.exe")
if L3_3 then
  L3_3 = 1
  return L3_3
end
L3_3 = L0_0
L4_4 = L2_2
L3_3 = L3_3(L4_4, "\\powerpnt.exe")
if L3_3 then
  L3_3 = 1
  return L3_3
end
L3_3 = skip
L3_3 = L3_3.SCANSOURCE_IOAV_FILE
if L1_1 == L3_3 then
  L3_3 = L0_0
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, "\\explorer.exe")
  if not L3_3 then
    L3_3 = L0_0
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, "\\pr_zip_03_uncompressfiles.exe")
  elseif L3_3 then
    L3_3 = 1
    return L3_3
  end
end
L3_3 = skip
L3_3 = L3_3.SCANSOURCE_IOAV_FILE
if L1_1 == L3_3 then
  L3_3 = skip
  L3_3 = L3_3.IOAVGetDownloadUrl
  L3_3 = L3_3()
  if L3_3 ~= nil then
    L4_4 = skip
    L4_4 = L4_4.IOAVGetUrlPart
    L4_4 = L4_4(L3_3, 2, 0)
    if L4_4 ~= nil and L0_0(string.lower(L4_4), "microsoft.com") then
      return 1
    end
  end
end
L3_3 = 0
return L3_3
