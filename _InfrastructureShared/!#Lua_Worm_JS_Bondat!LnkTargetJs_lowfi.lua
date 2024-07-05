local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Worm:JS/Bondat!lnk"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "PACKED_WITH:[CMDEmbedded]"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = tostring
    L1_1 = headerpage
    L0_0 = L0_0(L1_1)
    L2_2 = L0_0
    L1_1 = L0_0.match
    L1_1 = L1_1(L2_2, "/c start wscript \"(%.Trashes\\%d+\\%l+%.js)\" &")
    if L1_1 == nil then
      L2_2 = L0_0.match
      L2_2 = L2_2(L0_0, "/c start wscript%.exe \"(%.Trashes\\%d+\\%l+%.js)\" &")
      L1_1 = L2_2
      if L1_1 == nil then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
    end
    L2_2 = nil
    if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
      L2_2 = MpCommon.PathToWin32Path(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    end
    if L2_2 == nil then
      L2_2 = mp.getfilename():match("(.+)\\[^\\]+$")
    end
    if L2_2 == nil then
      return mp.CLEAN
    end
    mp.ReportLowfi(L2_2 .. "\\" .. L1_1, 2916175846)
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
