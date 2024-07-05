local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME)
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, "\\tasks")
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.HEADERPAGE_SZ
  if L1_1 <= 4096 then
    L1_1 = tostring
    L2_2 = headerpage
    L1_1 = L1_1(L2_2)
    L2_2 = L1_1.match
    L2_2 = L2_2(L1_1, "<Exec>.+<Command>(.+)</Command>")
    if L2_2 ~= nil and L2_2:len() > 5 and string.sub(L2_2, -4) == ".exe" and string.match(string.lower(L2_2), "google") == nil and string.match(string.lower(L2_2), "dropbox") == nil and string.match(string.lower(L2_2), "yandex") == nil and string.match(string.lower(L2_2), "coccoc") == nil and string.match(string.lower(L2_2), "chromium") == nil and string.match(string.lower(L2_2), "facebook") == nil and string.match(string.lower(L2_2), "microsoftedge") == nil and string.match(string.lower(L2_2), "bravesoftware") == nil and string.match(string.lower(L2_2), "tvinstall") == nil and string.match(string.lower(L2_2), "myasus") == nil and string.match(string.lower(L2_2), "easyxplore") == nil and string.match(string.lower(L2_2), "onedrive") == nil then
      mp.ReportLowfi(L2_2, 2451161169)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
