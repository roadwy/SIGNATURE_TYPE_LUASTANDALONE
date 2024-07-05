local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = 150000000
L3_3 = bm
L3_3 = L3_3.GetSignatureMatchDuration
L3_3 = L3_3()
if L2_2 < L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.wp2
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(L5_5)
    if L4_4 then
      if L5_5 then
        L8_8 = 1
        L9_9 = true
        if L5_5 then
          L8_8 = 1
          L9_9 = true
          if L5_5 then
            return L5_5
          end
        end
      end
    end
  end
end
L4_4 = 0
for L8_8 = 1, L0_0 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  if L9_9 == 16388 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L8_8]
    L10_10 = L10_10.utf8p1
    if L10_10 ~= nil and L10_10 ~= "" and L1_1[L10_10] == nil and (isSensitiveFileForLinux(L10_10) or string.find(L10_10, ".pfx", -4, true) or string.find(L10_10, ".key", -4, true) or string.find(L10_10, ".ppk", -4, true) or string.find(L10_10, ".keytab", 1, true) or string.find(L10_10, ".htpasswd", 1, true) or string.find(L10_10, "/private-keys-v1.d", 1, true) or string.find(L10_10, "/secring.gpg", 1, true)) then
      L1_1[L10_10] = true
      bm.add_related_file(L10_10)
      L4_4 = L4_4 + 1
    end
  end
end
if L4_4 >= 10 then
  L8_8 = "Collection_SensitiveFilesOpen"
  L5_5(L6_6, L7_7, L8_8)
  L8_8 = "CredentialAccess"
  L5_5(L6_6, L7_7, L8_8)
  L5_5()
  L5_5()
  L8_8 = L5_5
  L9_9 = bm
  L9_9 = L9_9.RelatedStringBMReport
  L6_6(L7_7, L8_8, L9_9)
  return L6_6
end
return L5_5
