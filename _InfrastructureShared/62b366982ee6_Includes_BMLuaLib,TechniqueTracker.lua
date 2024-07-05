local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = 150000000
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
if L0_0 < L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.wp1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p1
    L4_4 = L2_2
    L3_3 = L2_2.match
    L5_5 = "[^>](.-)([^\\/]-%.?([^%.\\/]*))$"
    L5_5 = L3_3(L4_4, L5_5)
    if L4_4 == nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = {
      L7_7,
      L8_8,
      L9_9,
      L10_10,
      L11_11,
      "ccrypt",
      "gpg",
      "shred",
      "dd",
      "bash",
      "tcsh",
      "ksh",
      "dash",
      "zsh"
    }
    L10_10 = "sshd"
    L11_11 = "openssl"
    for L10_10, L11_11 in L7_7(L8_8) do
      if string.find(L4_4, L11_11, 1, true) then
        return mp.CLEAN
      end
    end
  end
end
L2_2 = addRelatedProcess
L2_2()
L2_2 = reportRelatedBmHits
L2_2()
L2_2 = TrackPidAndTechniqueBM
L3_3 = "BM"
L4_4 = "T1036.003"
L5_5 = "CopyLolbin_DefenseEvasion"
L2_2(L3_3, L4_4, L5_5)
L2_2 = RemediateProcessTreeForLinux
L2_2()
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
