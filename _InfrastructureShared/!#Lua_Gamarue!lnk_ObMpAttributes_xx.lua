local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 24 or L0_0 > 255 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 33
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 1554039296 then
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = headerpage
  L3_3 = 33
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= 2697077248 then
    L1_1 = mp
    L1_1 = L1_1.bitand
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = headerpage
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = 16777215
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= 6070466 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3, L4_4, L5_5 = nil, nil, nil
L7_7 = L2_2
L6_6 = L2_2.find
L8_8 = "^%l:\\windows\\system32\\rundll32%.exe%z"
L6_6 = L6_6(L7_7, L8_8)
if L6_6 then
  while true do
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L1_1
    L8_8 = "\160\\(%l+)(%.%l%l%l),%l+%z"
    L9_9 = L6_6(L7_7, L8_8)
    L5_5 = L9_9
    L4_4 = L8_8
    _ = L7_7
    L3_3 = L6_6
    if L3_3 then
    else
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L1_1
      L8_8 = "\160\\(~%$%l+)(%.%l%l%l),%l+%z"
      L9_9 = L6_6(L7_7, L8_8)
      L5_5 = L9_9
      L4_4 = L8_8
      _ = L7_7
      L3_3 = L6_6
      if L3_3 then
      else
        L6_6 = string
        L6_6 = L6_6.find
        L7_7 = L1_1
        L8_8 = "\160\\(%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+)(%.%w+),%w+%z"
        L9_9 = L6_6(L7_7, L8_8)
        L5_5 = L9_9
        L4_4 = L8_8
        _ = L7_7
        L3_3 = L6_6
        if L3_3 then
        else
          L6_6 = string
          L6_6 = L6_6.find
          L7_7 = L1_1
          L8_8 = "\160\\(%w+)(%.%w+),%w+%z"
          L9_9 = L6_6(L7_7, L8_8)
          L5_5 = L9_9
          L4_4 = L8_8
          _ = L7_7
          L3_3 = L6_6
          if L3_3 then
          else
            L6_6 = string
            L6_6 = L6_6.find
            L7_7 = L1_1
            L8_8 = "\160\\({?[%w%s%p]+}?)(%.{?[%w%s%-]+}?)\"?,[%w%p%s]+%z"
            L9_9 = L6_6(L7_7, L8_8)
            L5_5 = L9_9
            L4_4 = L8_8
            _ = L7_7
            L3_3 = L6_6
            if L3_3 then
            else
              do break end
              else
                L6_6 = string
                L6_6 = L6_6.find
                L7_7 = L1_1
                L8_8 = "\194\160\\(%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+)(%.%w+),%w+%z"
                L9_9 = L6_6(L7_7, L8_8)
                L5_5 = L9_9
                L4_4 = L8_8
                _ = L7_7
                L3_3 = L6_6
                if not L3_3 then
                  L6_6 = string
                  L6_6 = L6_6.find
                  L7_7 = L1_1
                  L8_8 = "\160\\\\\\\\\\\\\\\\\\\\\\(%p%p%p%p%p-)(%.%d),%w+%z"
                  L9_9 = L6_6(L7_7, L8_8)
                  L5_5 = L9_9
                  L4_4 = L8_8
                  _ = L7_7
                  L3_3 = L6_6
                end
              end
            end
          end
        end
      end
    end
  end
if L3_3 then
  L6_6 = {}
  L6_6[".exe"] = true
  L6_6[".dll"] = true
  L6_6[".cpl"] = true
  L6_6[".ocx"] = true
  L7_7 = L6_6[L5_5]
  if L7_7 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = mp
  L7_7 = L7_7.get_parent_filehandle
  L7_7 = L7_7()
  if L7_7 == nil then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = mp
  L8_8 = L8_8.readfile_by_handle
  L9_9 = L7_7
  L8_8 = L8_8(L9_9, 0, 64)
  if L8_8 == nil then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = mp
  L9_9 = L9_9.readu_u32
  L9_9 = L9_9(L8_8, 1)
  if L9_9 ~= 76 then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = mp
  L9_9 = L9_9.readu_u32
  L9_9 = L9_9(L8_8, 57)
  if L9_9 ~= 7 then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = nil
  if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    L9_9 = MpCommon.PathToWin32Path(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  end
  if L9_9 == nil then
    L9_9 = mp.getfilename():match("(.+)\\[^\\]+$")
  end
  if L9_9 ~= nil then
    mp.ReportLowfi(L9_9 .. "\\\194\160\\" .. L4_4 .. L5_5, 2406282551)
    mp.ReportLowfi(L9_9 .. "\\\194\160\\IndexerVolumeGuid", 2012828607)
  end
  return mp.INFECTED
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
