local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4)
  local L2_5
  if A0_3 == nil then
    L2_5 = false
    return L2_5
  end
  L2_5 = 0
  for _FORV_6_, _FORV_7_ in ipairs(A0_3) do
    L2_5 = L2_5 + 1
    if A0_3[L2_5].FingerprintSha1 == nil then
      return false
    end
    if A0_3[L2_5].FingerprintSha1.HashType ~= "SHA1" then
      return false
    end
    if A0_3[L2_5].FingerprintSha1.Hash == nil then
      return false
    end
    if A1_4[A0_3[L2_5].FingerprintSha1.Hash] then
      return true
    end
    break
  end
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
L2_2["\245\178Oe\207$\192\143_\233\187Np\183\185D2\251p\v"] = true
L2_2["\006o\200T\204\205s\149!\175\238\239\fC\255\205j\017k\191"] = true
L2_2["\209\159\b\200\020{\231\167\a\130\250\147k\023C\031Oj\023\251"] = true
L2_2["\130~r5=i\016\169\222\199\243\209\006\022v\232\003V\253S"] = true
L2_2[".\13544\140\0039\r$\250\249n\134\187\001\179\158:\212\219"] = true
L2_2["z\001\240\"\162\002BE}u6\t\223\255\0005\228\1623\244"] = true
L2_2["1\170\202;\141\030\131D\181\tu\166\196}\218\026\1707E\188"] = true
for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
  if L0_0(_FORV_7_.Certificates, L2_2) then
    return mp.INFECTED
  end
  break
end
return mp.CLEAN
