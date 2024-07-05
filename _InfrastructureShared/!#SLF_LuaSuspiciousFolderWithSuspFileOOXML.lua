local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_SCANREASON
  L0_0 = L0_0(L1_1)
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
elseif L0_0 == L1_1 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L11_11 = L1_1()
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1())
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L2_2 = L0_0
  L1_1 = L0_0.len
  L1_1 = L1_1(L2_2)
  if L1_1 < 50 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "\\downloads"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 > 1048576 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L3_3 = L0_0
  L2_2 = L0_0.match
  L4_4 = "(.+\\)([^\\]+)$"
  L3_3 = L2_2(L3_3, L4_4)
  if L2_2 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L5_5 = L2_2
  L4_4 = L2_2.len
  L4_4 = L4_4(L5_5)
  if L4_4 > 40 and L3_3 ~= nil then
    L5_5 = L2_2
    L4_4 = L2_2.find
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L5_5 = L2_2
    L4_4 = L2_2.match
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L5_5 = L4_4.len
      L5_5 = L5_5(L6_6)
    elseif L5_5 < 44 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = {}
    L5_5[".xls->"] = "%.xls%->.+"
    L5_5["xlsx->"] = "%.xlsx%->.+"
    L5_5[".doc->"] = "%.doc%->.+"
    L5_5["docx->"] = "%.docx%->.+"
    L5_5[".rtf->"] = "%.rtf%->.+"
    L5_5["xlsm->"] = "%.xlsm%->.+"
    L5_5["xlsb->"] = "%.xlsb%->.+"
    L5_5["xltx->"] = "%.xltx%->.+"
    L5_5["xltm->"] = "%.xltm%->.+"
    L5_5["xlam->"] = "%.xlam%->.+"
    L5_5[".xla->"] = "%.xla%->.+"
    L5_5["docm->"] = "%.docm%->.+"
    L5_5["dotx->"] = "%.dotx%->.+"
    L5_5["dotm->"] = "%.dotm%->.+"
    L5_5[".ppt->"] = "%.ppt%->.+"
    L5_5["pptm->"] = "%.pptm%->.+"
    L5_5[".pps->"] = "%.pps%->.+"
    L5_5["pptx->"] = "%.pptx%->.+"
    L5_5["ppsx->"] = "%.ppsx%->.+"
    L5_5[".odt->"] = "%.odt%->.+"
    L5_5[".xml->"] = "%.xml%->.+"
    for L9_9, L10_10 in L6_6(L7_7) do
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L3_3, L9_9, 1, true)
      if L11_11 then
        L11_11 = string
        L11_11 = L11_11.match
        L11_11 = L11_11(L3_3, L10_10)
        if L11_11 == nil or string.len(L11_11) < 4 then
          return mp.CLEAN
        end
        if L11_11:find(">word/", 1, true) or L11_11:find(">xl/embeddings/", 1, true) then
          if L11_11:sub(-4) == ".bin" or L11_11:sub(-4) == ".exe" or L11_11:sub(-4) == ".scr" then
            return mp.INFECTED
          end
          break
        end
        if L11_11:find(".jar->", 1, true) then
          if L11_11:sub(-6) == ".class" then
            return mp.INFECTED
          end
          break
        end
        if L11_11:find(">word/embeddings/ole", 1, true) then
          if L11_11:sub(-4) == ".bin" or L11_11:sub(-4) == ".exe" then
            return mp.INFECTED
          end
          break
        end
        if L11_11:match(">%(ole stream .%)%->.+", 1, true) then
          return mp.INFECTED
        end
        break
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
