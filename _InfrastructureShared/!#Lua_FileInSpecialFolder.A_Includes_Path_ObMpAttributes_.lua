local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_PATH
L8_8 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2, L3_3))
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
    L2_2["\\appdata\\local\\temp"] = "temp"
    L2_2["\\appdata\\local"] = "localappdata"
    L2_2["\\appdata\\locallow"] = "locallowappdata"
    L2_2[":\\program files"] = "programfiles"
    L2_2[":\\program files (x86)"] = "programfilesx86"
    L2_2[":\\users\\public"] = "public"
    L2_2[":\\windows\\system32\\wbem"] = "wbem"
    L2_2[":\\windows\\syswow64\\wbem"] = "wbem"
    L2_2[":\\windows\\servicing"] = "servicing"
    L2_2[":\\windows\\system32"] = "sysdir"
    L2_2[":\\windows\\syswow64"] = "syswow64"
    L2_2[":\\windows"] = "windir"
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = #L0_0
      if L8_8 > #L6_6 then
        L8_8 = L0_0.find
        L8_8 = L8_8(L0_0, L6_6, 1, true)
        if L8_8 then
          L8_8 = "Lua:Context/FileInPath.A!"
          L8_8 = L8_8 .. L7_7
          mp.set_mpattribute(L8_8)
          return mp.CLEAN
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
