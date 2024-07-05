local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4)
  if A0_3 == nil and A1_4 == nil then
    return false
  end
  for _FORV_5_, _FORV_6_ in ipairs(A0_3) do
    if _FORV_6_.Fingerprint == nil then
      return false
    end
    if _FORV_6_.Fingerprint.HashType ~= "SHA1" then
      return false
    end
    if _FORV_6_.Fingerprint.Hash == nil then
      return false
    end
    if A1_4[_FORV_6_.Fingerprint.Hash] then
      return true
    end
    break
  end
  return false
end
L1_1 = mp
L1_1 = L1_1.GetCertificateInfo
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2["\031> =*\139\240\211\197#\246tB\160\006W\131\160\179#"] = true
for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
  if _FORV_7_.AuthenticodeContentType ~= "PE" then
    return mp.CLEAN
  end
  if L0_0(_FORV_7_.Signers, L2_2) then
    if mp.get_mpattribute("RPF:PEHasIOAVURL") and mp.get_mpattribute("RPF:TopLevelFile") then
      return mp.INFECTED
    end
    mp.set_mpattribute("Lua:Win32/TrapwotCert.A")
  end
  break
end
return mp.CLEAN
