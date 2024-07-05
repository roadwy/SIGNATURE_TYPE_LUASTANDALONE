local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L10_10 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L1_1(L2_2, L3_3))
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "Lua:DownFromWebMail"
L2_2 = L2_2(L3_3)
if not L2_2 then
  if L0_0 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L0_0
    L2_2 = L2_2(L3_3)
    if not (L2_2 < 30) then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L0_0
      L4_4 = "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\"
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    elseif L2_2 == nil then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L0_0
      L4_4 = "\\downloads"
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if L2_2 ~= nil then
        L2_2 = isOutlookProcess
        L2_2 = L2_2()
      end
    end
  elseif not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L0_0
  L4_4 = ":\\recoverybin\\volume-"
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
elseif L2_2 < 12 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
L3_3 = {}
L3_3[".xml"] = true
L3_3.rels = true
L4_4 = L3_3[L2_2]
if L4_4 == true then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4[".xls->"] = "%.xls%->.+"
L4_4["xlsx->"] = "%.xlsx%->.+"
L4_4[".doc->"] = "%.doc%->.+"
L4_4["docx->"] = "%.docx%->.+"
L4_4[".rtf->"] = "%.rtf%->.+"
L4_4["xlsm->"] = "%.xlsm%->.+"
L4_4["xlsb->"] = "%.xlsb%->.+"
L4_4["xltx->"] = "%.xltx%->.+"
L4_4["xltm->"] = "%.xltm%->.+"
L4_4["xlam->"] = "%.xlam%->.+"
L4_4[".xla->"] = "%.xla%->.+"
L4_4["docm->"] = "%.docm%->.+"
L4_4["dotx->"] = "%.dotx%->.+"
L4_4["dotm->"] = "%.dotm%->.+"
L4_4["pptm->"] = "%.pptm%->.+"
L4_4[".pps->"] = "%.pps%->.+"
L4_4["ppsx->"] = "%.ppsx%->.+"
L4_4[".odt->"] = "%.odt%->.+"
L4_4[".xml->"] = "%.xml%->.+"
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = string
  L10_10 = L10_10.find
  L10_10 = L10_10(L1_1, L8_8, 1, true)
  if L10_10 then
    L10_10 = string
    L10_10 = L10_10.match
    L10_10 = L10_10(L1_1, L9_9)
    if L10_10 == nil or string.len(L10_10) < 4 then
      return mp.CLEAN
    end
    if L10_10:find("/vba", 1, true) then
      if L10_10:sub(-4) == ".bin" then
        mp.set_mpattribute("LUA:MacroInOutlook")
        return mp.INFECTED
      end
      break
    end
    if L10_10:find(">word/", 1, true) then
      if L10_10:sub(-4) == ".exe" or L10_10:sub(-4) == ".scr" then
        mp.set_mpattribute("LUA:ExecInOutlook")
        return mp.INFECTED
      end
      break
    end
    if L10_10:find(".jar->", 1, true) then
      if L10_10:sub(-6) == ".class" then
        mp.set_mpattribute("LUA:JarInOutlook")
        return mp.INFECTED
      end
      break
    end
    if L10_10:find(">xl/embeddings/", 1, true) then
      if L10_10:sub(-4) == ".bin" or L10_10:sub(-4) == ".exe" or L10_10:sub(-4) == ".scr" then
        mp.set_mpattribute("LUA:ExecInOutlook")
        return mp.INFECTED
      end
      break
    end
    if L10_10:find(">word/embeddings/ole", 1, true) then
      if L10_10:sub(-4) == ".bin" or L10_10:sub(-4) == ".exe" then
        mp.set_mpattribute("LUA:ExecInOutlook")
        return mp.INFECTED
      end
      break
    end
    if L10_10:find("oleobject", 1, true) then
      if L10_10:sub(-4) == ".bin" then
        mp.set_mpattribute("LUA:OleObjInOutlook")
        return mp.INFECTED
      end
      break
    end
    if L10_10:match(">%(ole stream .%)%->.+", 1, true) and L10_10:find("->(utf-", 1, true) == nil then
      if L10_10:sub(-4) ~= ".bin" then
        if L10_10:sub(-4) == ".lnk" then
          mp.set_mpattribute("LUA:LnkInOleStreamInOutlook")
          return mp.INFECTED
        end
        break
      end
      if L10_10:sub(-11) == "ole10native" then
        mp.set_mpattribute("LUA:OleNativeInOutlook")
        return mp.INFECTED
      end
      mp.set_mpattribute("LUA:OleStreamInOutlook")
      return mp.INFECTED
    end
    break
  end
end
return L5_5
