local L0_0, L1_1, L2_2
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L2_2 = L2_2(bm.get_imagepath())
L1_1 = L1_1(L2_2, L2_2(bm.get_imagepath()))
L2_2 = sysio
L2_2 = L2_2.IsFileExists
L2_2 = L2_2(L1_1)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.IsKnownFriendlyFile
  L2_2 = L2_2(L1_1, true, false)
  if not L2_2 then
    L2_2 = bm
    L2_2 = L2_2.add_related_string
    L2_2("VaultAccess", L1_1, bm.RelatedStringBMReport)
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L2_2(L1_1)
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L2_2 = L2_2()
if L2_2 ~= nil then
  for _FORV_7_, _FORV_8_ in ipairs(L2_2) do
    if _FORV_8_.image_path ~= nil then
      L0_0 = string.lower(MpCommon.PathToWin32Path(_FORV_8_.image_path))
      if sysio.IsFileExists(L0_0) and not mp.IsKnownFriendlyFile(L0_0, true, false) then
        bm.add_related_string("VaultAccess", L0_0, bm.RelatedStringBMReport)
        bm.add_related_file(L0_0)
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN
