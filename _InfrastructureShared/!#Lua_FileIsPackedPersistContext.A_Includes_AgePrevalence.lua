local L0_0
function L0_0(A0_1, A1_2, A2_3)
  local L3_4
  if A1_2 ~= nil then
    L3_4 = #A1_2
  elseif L3_4 <= 1 then
    L3_4 = false
    return L3_4
  end
  L3_4 = 0
  if A2_3 ~= nil and A2_3 > 0 then
    L3_4 = A2_3
  end
  if mp.ispackedwith(A1_2 .. "+") then
    if not MpCommon.QueryPersistContext(A0_1, "FileIsPackedWith" .. A1_2) then
      MpCommon.AppendPersistContext(A0_1, "FileIsPackedWith" .. A1_2, L3_4)
    end
    return true
  else
    clearPersistContext(A0_1, "FileIsPackedWith" .. A1_2)
    return false
  end
  return false
end
checkPackerPersistContext = L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if peattributes.packersigmatched then
  checkPackerPersistContext(L0_0, "UPX")
  checkPackerPersistContext(L0_0, "Aspack")
  checkPackerPersistContext(L0_0, "ASProtect")
  checkPackerPersistContext(L0_0, "FSG")
  checkPackerPersistContext(L0_0, "PECompact")
  checkPackerPersistContext(L0_0, "Petite")
  checkPackerPersistContext(L0_0, "EZip")
  checkPackerPersistContext(L0_0, "Exe32Pack")
  checkPackerPersistContext(L0_0, "AutoIt")
  checkPackerPersistContext(L0_0, "AutoHotKey")
  if not MpCommon.QueryPersistContext(L0_0, "PackerSigMatched") then
    MpCommon.AppendPersistContext(L0_0, "PackerSigMatched", 0)
  end
end
if not MpCommon.QueryPersistContext(L0_0, "FileIsPackedWithUPX") and (mp.get_mpattribute("BM_UPX_PACKED") or mp.get_mpattribute("Lua:FileIsPackedWithUPX") or mp.get_mpattribute("HSTR:UpxDecryption")) then
  MpCommon.AppendPersistContext(L0_0, "FileIsPackedWithUPX", 0)
end
if true then
  if (mp.IsTrustedFile(false) == true or mp.IsKnownFriendlyFile(L0_0, false, false)) == true then
    return mp.CLEAN
  end
  mp.set_mpattribute("BM_MT1027.002")
  if not MpCommon.QueryPersistContext(L0_0, "T1027.002") then
    MpCommon.AppendPersistContext(L0_0, "T1027.002", 0)
  end
  if not MpCommon.QueryPersistContext(L0_0, "SoftwarePacking") then
    MpCommon.AppendPersistContext(L0_0, "SoftwarePacking", 0)
  end
end
return mp.CLEAN
