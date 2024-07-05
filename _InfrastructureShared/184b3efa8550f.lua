local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7)
  return A0_7:match("(.-)([^\\/]-%.?[^%.\\/]*)$"):lower(), A0_7:match("(.-)([^\\/]-%.?[^%.\\/]*)$"):lower()
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L6_6 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2())
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
else
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\svchost.exe"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\filecoauth.exe"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[8]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[8]
    L2_2 = L2_2.utf8p1
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[8]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = string
          L2_2 = L2_2.lower
          L3_3 = this_sigattrlog
          L3_3 = L3_3[8]
          L3_3 = L3_3.utf8p1
          L2_2 = L2_2(L3_3)
          L3_3 = string
          L3_3 = L3_3.lower
          L4_4 = this_sigattrlog
          L4_4 = L4_4[8]
          L4_4 = L4_4.utf8p2
          L3_3 = L3_3(L4_4)
          L4_4 = L0_0
          L5_5 = L1_1
          L5_5 = L4_4(L5_5)
          L6_6 = L0_0
          L6_6 = L6_6(this_sigattrlog[6].utf8p2)
          if string.find(L2_2, L4_4, 1, true) and string.find(L3_3, L6_6, 1, true) and L0_0(L2_2) ~= L0_0(L3_3) and sysio.IsFileExists(L3_3) and mp.IsKnownFriendlyFile(L3_3, false, false) == false then
            bm.add_related_file(L3_3)
          end
        end
      end
    end
  end
end
L2_2 = bm
L2_2 = L2_2.trigger_sig_self_propagate
L3_3 = "SuspSlugResinProcessLaunch"
L4_4 = "Behavior:Win32/SnailResin.A!dha"
L2_2(L3_3, L4_4)
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
