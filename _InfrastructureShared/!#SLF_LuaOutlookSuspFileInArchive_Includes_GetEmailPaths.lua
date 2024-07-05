local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if not mp.get_mpattribute("Lua:DownFromWebMail") and (L1_1 == nil or (string.len(L1_1) < 50 or string.find(L1_1, "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) == nil) and (string.find(L1_1, "\\downloads", 1, true) == nil or not isOutlookProcess())) then
  return mp.CLEAN
end
if L2_2 == nil or string.len(L2_2) < 12 then
  return mp.CLEAN
end
if ({
  [".jse"] = true,
  [".vbs"] = true,
  [".wsf"] = true,
  [".vbe"] = true,
  [".hta"] = true,
  [".mht"] = true,
  [".bat"] = true,
  [".ps1"] = true,
  [".cmd"] = true,
  [".url"] = true,
  [".exe"] = true,
  [".scr"] = true,
  [".pif"] = true,
  [".lnk"] = true,
  [".docx"] = true,
  [".xlsx"] = true,
  [".doc"] = true,
  [".xls"] = true,
  [".rtf"] = true,
  ["docm"] = true,
  ["xlsm"] = true,
  ["ppam"] = true,
  ["pptm"] = true,
  ["ppsm"] = true,
  ["potm"] = true
})[L2_2:sub(-4)] == true or ({
  [".jse"] = true,
  [".vbs"] = true,
  [".wsf"] = true,
  [".vbe"] = true,
  [".hta"] = true,
  [".mht"] = true,
  [".bat"] = true,
  [".ps1"] = true,
  [".cmd"] = true,
  [".url"] = true,
  [".exe"] = true,
  [".scr"] = true,
  [".pif"] = true,
  [".lnk"] = true,
  [".docx"] = true,
  [".xlsx"] = true,
  [".doc"] = true,
  [".xls"] = true,
  [".rtf"] = true,
  ["docm"] = true,
  ["xlsm"] = true,
  ["ppam"] = true,
  ["pptm"] = true,
  ["ppsm"] = true,
  ["potm"] = true
})[L2_2:sub(-6)] == true then
  if not L2_2:find(".iso->", 1, true) and not L2_2:find(".arj->", 1, true) and not L2_2:find(".gz->", 1, true) and not L2_2:find(".xz->", 1, true) and not L2_2:find(".ace->", 1, true) and not L2_2:find(".z->", 1, true) and not L2_2:find(".vhd->", 1, true) and not L2_2:find(".vhdx->", 1, true) and not L2_2:find("ppkg->", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
