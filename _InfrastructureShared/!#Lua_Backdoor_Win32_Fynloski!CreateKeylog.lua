local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONOPEN
if L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_NEWLYCREATEDHINT
  L2_2 = L2_2(L3_3)
  if L2_2 == true then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_FILENAME
    L4_4 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
    L0_0 = L2_2
    if L0_0 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L3_3 = L0_0
    L2_2 = L0_0.sub
    L4_4 = -3
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = L2_2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    if L2_2 ~= ".dc" then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = nil
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L4_4 = L4_4(mp.CONTEXT_DATA_FILEPATH)
    L3_3 = L3_3(L4_4, L4_4(mp.CONTEXT_DATA_FILEPATH))
    L2_2 = L3_3
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, "\\application data\\dclogs", 1, true)
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L3_3 = L3_3(L4_4, "\\appdata\\roaming\\dclogs", 1, true)
    elseif L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L0_0
      L3_3 = L3_3(L4_4, "20%d%d%-[01][0-9]%-[0-3][0-9]%-%d%d?%.dc", 1, false)
      if L3_3 then
        L3_3, L4_4 = nil, nil
        L3_3 = string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
        L4_4 = string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
        if L3_3 == nil or L4_4 == nil then
          return mp.CLEAN
        end
        if string.sub(L3_3, -4) == ".exe" and (string.find(L4_4, "\\desktop\\.+") or string.find(L4_4, "\\.-documents\\.+") or string.find(L4_4, "\\start menu\\.+") or string.find(L4_4, "\\programdata", 1, true) or string.find(L4_4, "\\appdata\\local", 1, true) or string.find(L4_4, "\\appdata\\roaming", 1, true) or string.find(L4_4, "\\local settings\\temp", 1, true) or string.find(L4_4, "\\windows\\system32\\.+") or string.find(L4_4, "\\administrator\\application data", 1, true) or string.find(L4_4, "\\local settings\\application data", 1, true)) then
          mp.ReportLowfi(MpCommon.PathToWin32Path(L4_4) .. "\\" .. L3_3, 949894675)
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
