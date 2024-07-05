local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("attrmatch_rescan_notmyapp")
if not L0_0 then
  L0_0 = pe
  L0_0 = L0_0.query_import
  if 0 == L0_0(pe.IMPORT_STATIC, 4288984855) then
    return mp.CLEAN
  end
  if 0 == L0_0(pe.IMPORT_STATIC, 3419395426) and 0 == L0_0(pe.IMPORT_STATIC, 1058758707) then
    return mp.CLEAN
  end
  if 0 == L0_0(pe.IMPORT_STATIC, 1881577768) then
    return mp.CLEAN
  end
  if 0 == L0_0(pe.IMPORT_STATIC, 2560256095) then
    return mp.CLEAN
  end
  if 0 == L0_0(pe.IMPORT_STATIC, 1256947212) then
    return mp.CLEAN
  end
  if 0 == L0_0(pe.IMPORT_STATIC, 453198482) then
    return mp.CLEAN
  end
  if 0 == L0_0(pe.IMPORT_STATIC, 133826329) then
    return mp.CLEAN
  end
  mp.set_mpattribute("attrmatch_rescan_notmyapp")
  pe.reemulate()
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
