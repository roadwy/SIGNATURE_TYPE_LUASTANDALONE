local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_HAS_MOTW_ADS
L0_0 = L0_0(L1_1)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.GetMOTWZone
  L0_0 = L0_0()
  if L0_0 == nil or L0_0 < 3 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 > 2097152 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.getfilename())
  if L2_2 == nil or string.len(L2_2) < 10 then
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
    if not L2_2:find(".zip->", 1, true) and not L2_2:find(".7z->", 1, true) and not L2_2:find(".rar->", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
