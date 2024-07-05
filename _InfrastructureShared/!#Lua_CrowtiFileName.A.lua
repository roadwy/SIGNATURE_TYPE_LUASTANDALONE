local L0_0, L1_1, L2_2, L3_3, L4_4
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
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 < 20480 or L1_1 > 3145728 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILENAME
  L4_4 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L4_4 = -4
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == ".exe" then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
    L4_4 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
    if L2_2 == "explorer.exe" then
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L4_4 = mp
      L4_4 = L4_4.CONTEXT_DATA_FILEPATH
      L3_3 = L3_3(L4_4)
      L4_4 = string
      L4_4 = L4_4.lower
      L4_4 = L4_4(MpCommon.PathToWin32Path(L3_3))
      if (L4_4:sub(-16) == "\\appdata\\roaming" or L4_4:sub(-17) == "\\application data" or L4_4:sub(-8) == "\\startup" or L4_4:sub(-9, -8) == ":\\" and string.sub(L4_4, -7) == string.sub(L1_1, 0, 7)) and L1_1:find("^[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f].exe") == 1 then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
