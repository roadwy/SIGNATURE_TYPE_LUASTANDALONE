local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILENAME
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if not (L2_2 < 3) and L0_0 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L0_0
    L2_2 = L2_2(L3_3)
  end
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = L1_1
L5_5 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4))
L4_4 = L2_2
L3_3 = L2_2.gsub
L5_5 = "\\\\%?\\"
L3_3 = L3_3(L4_4, L5_5, "")
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.ExpandEnvironmentVariables
L5_5 = "%windir%"
L5_5 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5))
if L2_2 ~= nil and L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.len
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
elseif L4_4 < 2 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.len
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L5_5 = string
L5_5 = L5_5.len
L5_5 = L5_5(L2_2)
if L4_4 < L5_5 then
  L5_5 = string
  L5_5 = L5_5.sub
  L5_5 = L5_5(L2_2, 0, L4_4)
  if L5_5 == L3_3 then
    L5_5 = string
    L5_5 = L5_5.match
    L5_5 = L5_5(L2_2, L3_3 .. "(\\.-\\)")
    if L5_5 ~= nil and string.len(L5_5) > 2 then
      if ({
        ["\\microsoft.net\\"] = true,
        ["\\assembly\\"] = true
      })[L5_5] then
        return mp.CLEAN
      end
    end
  end
end
L5_5 = pe
L5_5 = L5_5.get_versioninfo
L5_5 = L5_5()
if L5_5 == nil or L5_5.OriginalFilename == nil or string.lower(L5_5.OriginalFilename) ~= "microsoft.workflow.compiler.exe" then
  mp.set_mpattribute("Lua:MsWorkFlowCompilerContext.A!invalidversioninfo")
  return mp.CLEAN
end
if string.lower(L0_0) == string.lower(L5_5.OriginalFilename) then
  mp.set_mpattribute("Lua:MsWorkFlowCompilerContext.A!legitfilename")
  return mp.INFECTED
end
mp.set_mpattribute("Lua:MsWorkFlowCompilerContext.A!suspiciousfilename")
return mp.INFECTED
