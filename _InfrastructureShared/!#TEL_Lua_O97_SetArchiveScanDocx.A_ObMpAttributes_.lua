local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 67324752 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = footerpage
  L2_2 = mp
  L2_2 = L2_2.FOOTERPAGE_SZ
  L2_2 = L2_2 - 21
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 == 101010256 then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_SCANREASON
    L0_0 = L0_0(L1_1)
    L1_1 = mp
    L1_1 = L1_1.SCANREASON_ONOPEN
    if L0_0 ~= L1_1 then
      L1_1 = mp
      L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
      if L0_0 ~= L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_FULL
    L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
    L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L3_3 = L3_3(mp.CONTEXT_DATA_PROCESSNAME)
    L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_PROCESSNAME))
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L1_1, "\\microsoft office\\office..\\....\\quickstyles")
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L1_1, "wordlr%.cab")
      if not L3_3 then
        L3_3 = string
        L3_3 = L3_3.find
        L3_3 = L3_3(L1_1, "devexpress%.snap%.v.....core%.dll")
        if not L3_3 then
          L3_3 = string
          L3_3 = L3_3.find
          L3_3 = L3_3(L1_1, "\\kingsoft\\wps cloud files\\userdata\\qing\\filecache", 1, true)
        end
      end
    elseif L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3("winword.exe|wps.exe|dropbox.exe", L2_2)
    if L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L1_1, "%.tmp$")
      if L3_3 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
    L3_3 = tostring
    L3_3 = L3_3(footerpage)
    if string.find(L3_3, "word/_rels/document.xml.rels") >= 22 and mp.readu_u32(L3_3, string.find(L3_3, "word/_rels/document.xml.rels") - 22) > 204800 then
      mp.set_mpattribute("MpForceScanArchives")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
