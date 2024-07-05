local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\msert.exe"
  L4_4 = -10
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = MpCommon
    L1_1 = L1_1.PathToWin32Path
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
    if L0_0 then
      L1_1 = mp
      L1_1 = L1_1.IsKnownFriendlyFile
      L2_2 = L0_0
      L3_3 = false
      L4_4 = false
      L1_1 = L1_1(L2_2, L3_3, L4_4)
      if L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.utf8p2
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "%common_appdata%"
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_3 = L1_1
  L4_4 = "%%common_appdata%%"
  L5_5 = "\\ProgramData"
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L1_1 = L2_2
end
L2_2 = sysio
L2_2 = L2_2.GetCommandLineFromService
L3_3 = "windefend"
L2_2 = L2_2(L3_3)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = ":\\"
L4_4 = L3_3(L4_4, L5_5, 1, true)
L5_5 = -1
if string.byte(L2_2, -1) == 34 then
  L5_5 = -2
end
L2_2 = string.sub(L2_2, L4_4, L5_5)
if not L2_2 then
  return mp.CLEAN
end
if string.find(L1_1, L2_2, 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
