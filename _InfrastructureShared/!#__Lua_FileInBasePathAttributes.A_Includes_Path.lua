local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_PATH
L9_9 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = #L0_0
  if L1_1 > 10 then
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 < 100 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = normalize_path
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
    if L0_0 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = {}
    L2_2[":\\programdata"] = "programdata"
    L2_2["\\appdata\\roaming"] = "appdata"
    L2_2[":\\program files\\common files"] = "commonprogramfiles"
    L2_2[":\\program files (x86)\\common files"] = "commonprogramfilesx86"
    L2_2["\\appdata\\local"] = "localappdata"
    L2_2["\\appdata\\locallow"] = "locallowappdata"
    L2_2[":\\program files"] = "programfiles"
    L2_2[":\\program files (x86)"] = "programfilesx86"
    L2_2[":\\users\\public"] = "public"
    L2_2[":\\windows"] = "windir"
    L2_2[":\\windows\\system32"] = "sysdir"
    L2_2[":\\windows\\syswow64"] = "syswow64"
    L2_2["\\appdata\\local\\temp"] = "temp"
    L2_2[":\\windows\\system32\\wbem"] = "wbem"
    L2_2[":\\windows\\syswow64\\wbem"] = "wbem"
    L2_2[":\\windows\\servicing"] = "servicing"
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = #L0_0
      L9_9 = #L6_6
      if L8_8 > L9_9 then
        L8_8 = string
        L8_8 = L8_8.sub
        L9_9 = L0_0
        L8_8 = L8_8(L9_9, -#L6_6)
        if L8_8 == L6_6 then
          L9_9 = "Lua:Context/FileInBasePath.A!"
          L9_9 = L9_9 .. L7_7
          mp.set_mpattribute(L9_9)
          return mp.CLEAN
        end
      end
    end
    L6_6 = 2
    if L3_3 == "\\\\" then
      L3_3(L4_4)
      return L3_3
    end
    if L3_3 > 35 then
      L6_6 = 17
      if L3_3 == ":\\windows\\winsxs" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 31
      if L3_3 == ":\\windows\\softwaredistribution" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 15
      if L3_3 == ":\\windows\\csc\\" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 20
      if L3_3 == ":\\windows\\assembly\\" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 21
      if L3_3 == ":\\windows\\servicing\\" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 35
      if L3_3 ~= ":\\windows\\microsoft.net\\framework\\" then
        L6_6 = 37
      elseif L3_3 == ":\\windows\\microsoft.net\\framework64\\" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 51
      if L3_3 == ":\\programdata\\microsoft\\windows defender\\platform\\" then
        L3_3(L4_4)
        return L3_3
      end
      L6_6 = 22
      if L3_3 == ":\\windows\\installer\\{" then
        L3_3(L4_4)
        return L3_3
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
