local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
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
      if not L2_2:find(".iso->", 1, true) and not L2_2:find(".arj->", 1, true) and not L2_2:find(".gz->", 1, true) and not L2_2:find(".xz->", 1, true) and not L2_2:find(".ace->", 1, true) and not L2_2:find(".z->", 1, true) and not L2_2:find(".vhd->", 1, true) and not L2_2:find("ppkg->", 1, true) and not L2_2:find(".img->", 1, true) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
