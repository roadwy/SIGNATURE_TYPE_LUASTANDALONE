local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.IsKnownFriendlyFile
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L2_2 = true
L3_3 = true
L0_0 = L0_0(L1_1, L2_2, L3_3)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L4_4 = L2_2()
L4_4 = L1_1(L2_2, L3_3, L4_4, L2_2())
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3, L4_4, L2_2()))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\installing\\assistant_installer.exe"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\slack.exe"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\utorrent.exe"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\chromium.exe"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\onedrive.exe"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\grammarlyinstaller.exe"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p1
    L3_3 = "\\\\BitTorrent$"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p1
    L3_3 = "\\\\uTorrent$"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L3_3 = "%a:[^:\"]+%.exe"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L2_2 = bm
      L2_2 = L2_2.add_related_file
      L3_3 = mp
      L3_3 = L3_3.ContextualExpandEnvironmentVariables
      L4_4 = L1_1
      L4_4 = L3_3(L4_4)
      L2_2(L3_3, L4_4, L3_3(L4_4))
    end
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    L4_4 = "%a:[^:\"]+%.ps1"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 then
      L3_3 = bm
      L3_3 = L3_3.add_related_file
      L4_4 = mp
      L4_4 = L4_4.ContextualExpandEnvironmentVariables
      L4_4 = L4_4(L2_2)
      L3_3(L4_4, L4_4(L2_2))
    end
    L3_3 = string
    L3_3 = L3_3.match
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4, "%a:[^:\"]+%.bat")
    if L3_3 then
      L4_4 = bm
      L4_4 = L4_4.add_related_file
      L4_4(mp.ContextualExpandEnvironmentVariables(L3_3))
    end
    L4_4 = string
    L4_4 = L4_4.match
    L4_4 = L4_4(this_sigattrlog[1].utf8p2, "%a:[^:\"]+%.dll")
    if L4_4 then
      bm.add_related_file(mp.ContextualExpandEnvironmentVariables(L4_4))
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
