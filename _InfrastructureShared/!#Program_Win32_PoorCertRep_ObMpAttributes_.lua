local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "PUA:"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "RPF:PUA:PREDICT:"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "RPF:PEEXEHasIOAVURL"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = false
L1_1 = false
L2_2 = false
L3_3 = false
L4_4 = false
L5_5 = mp
L5_5 = L5_5.get_mpattributesubstring
L6_6 = "RPF:PEEXEHasIOAVURL"
L5_5 = L5_5(L6_6)
if L5_5 then
  L1_1 = true
else
  L5_5 = mp
  L5_5 = L5_5.getfilename
  L6_6 = mp
  L6_6 = L6_6.bitor
  L6_6 = L6_6(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_PATH)
  L5_5 = L5_5(L6_6, L6_6(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_PATH))
  if L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.sub
  L6_6 = L6_6(L5_5, 1, 8)
  if L6_6 == "\\device\\" then
    L6_6 = MpCommon
    L6_6 = L6_6.PathToWin32Path
    L6_6 = L6_6(L5_5)
    L5_5 = L6_6
  end
  if L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.sub
  L6_6 = L6_6(L5_5, -14)
  if L6_6 == ":\\windows\\temp" then
    L6_6 = mp
    L6_6 = L6_6.getfilename
    L6_6 = L6_6(mp.bitor(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FNAME))
    if string.find(L6_6, "^tmp%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$") then
      return mp.CLEAN
    end
  end
  L6_6 = string
  L6_6 = L6_6.find
  L6_6 = L6_6(L5_5, ":\\users\\[^\\]+\\downloads\\", 1, false)
  if not L6_6 then
    L6_6 = string
    L6_6 = L6_6.sub
    L6_6 = L6_6(L5_5, -10)
  else
    if L6_6 == "\\downloads" then
      L1_1 = true
  end
  else
    L6_6 = string
    L6_6 = L6_6.find
    L6_6 = L6_6(L5_5, "\\temp\\", 1, true)
    if not L6_6 then
      L6_6 = string
      L6_6 = L6_6.sub
      L6_6 = L6_6(L5_5, -5)
    else
      if L6_6 == "\\temp" then
        L2_2 = true
    end
    else
      L6_6 = string
      L6_6 = L6_6.find
      L6_6 = L6_6(L5_5, ":\\users\\[^\\]+\\desktop", 1, false)
      if L6_6 then
        L3_3 = true
      else
        L6_6 = string
        L6_6 = L6_6.find
        L6_6 = L6_6(L5_5, ":\\program files", 1, true)
        if not L6_6 then
          L6_6 = string
          L6_6 = L6_6.find
          L6_6 = L6_6(L5_5, ":\\programdata", 1, true)
          if not L6_6 then
            L6_6 = string
            L6_6 = L6_6.find
            L6_6 = L6_6(L5_5, ":\\windows", 1, true)
            if not L6_6 then
              L6_6 = string
              L6_6 = L6_6.find
              L6_6 = L6_6(L5_5, ":\\users\\[^\\]+\\appdata", 1, false)
            end
          end
        elseif L6_6 then
          L4_4 = true
        end
      end
    end
  end
end
if L0_0 or L1_1 or L2_2 or L3_3 or not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L6_6 = "CONTEXT:PUA:InstallContextMet"
  L5_5(L6_6)
  if L0_0 or L1_1 then
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L6_6 = "CONTEXT:PUA:InstallContextMet:Download"
    L5_5(L6_6)
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
