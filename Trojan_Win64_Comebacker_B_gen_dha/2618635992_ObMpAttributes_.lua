local L0_0
L0_0 = pe
L0_0 = L0_0.get_exports
L0_0 = L0_0()
if L0_0 > 3 then
  return mp.CLEAN
end
for _FORV_7_ = 1, L0_0 do
  if ({
    DllMain = 10,
    ASN2_TYPE_new = 1,
    ASN2_TYPE_newW = 1,
    CleanupBrokerString = 1,
    cmsSetLogHandlerTHR = 1,
    deflateSuffix = 1,
    ENGINE_get_RAND = 1,
    ENGINE_get_RANDW = 1,
    glInitSampler = 1,
    json_object_get_unicode_string = 1,
    ntSystemInfo = 1,
    ntWindowsProc = 1,
    SetWebFilterString = 1,
    sql_blob_open = 1,
    SSL_HandShaking = 1
  })[pe.mmap_string_rva(L0_0()[_FORV_7_].namerva, 64)] ~= nil then
  end
end
if 0 + ({
  DllMain = 10,
  ASN2_TYPE_new = 1,
  ASN2_TYPE_newW = 1,
  CleanupBrokerString = 1,
  cmsSetLogHandlerTHR = 1,
  deflateSuffix = 1,
  ENGINE_get_RAND = 1,
  ENGINE_get_RANDW = 1,
  glInitSampler = 1,
  json_object_get_unicode_string = 1,
  ntSystemInfo = 1,
  ntWindowsProc = 1,
  SetWebFilterString = 1,
  sql_blob_open = 1,
  SSL_HandShaking = 1
})[pe.mmap_string_rva(L0_0()[_FORV_7_].namerva, 64)] == 10 then
  return mp.CLEAN
elseif 0 + ({
  DllMain = 10,
  ASN2_TYPE_new = 1,
  ASN2_TYPE_newW = 1,
  CleanupBrokerString = 1,
  cmsSetLogHandlerTHR = 1,
  deflateSuffix = 1,
  ENGINE_get_RAND = 1,
  ENGINE_get_RANDW = 1,
  glInitSampler = 1,
  json_object_get_unicode_string = 1,
  ntSystemInfo = 1,
  ntWindowsProc = 1,
  SetWebFilterString = 1,
  sql_blob_open = 1,
  SSL_HandShaking = 1
})[pe.mmap_string_rva(L0_0()[_FORV_7_].namerva, 64)] >= 11 then
  return mp.INFECTED
elseif 0 < 0 + ({
  DllMain = 10,
  ASN2_TYPE_new = 1,
  ASN2_TYPE_newW = 1,
  CleanupBrokerString = 1,
  cmsSetLogHandlerTHR = 1,
  deflateSuffix = 1,
  ENGINE_get_RAND = 1,
  ENGINE_get_RANDW = 1,
  glInitSampler = 1,
  json_object_get_unicode_string = 1,
  ntSystemInfo = 1,
  ntWindowsProc = 1,
  SetWebFilterString = 1,
  sql_blob_open = 1,
  SSL_HandShaking = 1
})[pe.mmap_string_rva(L0_0()[_FORV_7_].namerva, 64)] then
  if ({
    [".bin"] = true,
    [".cpl"] = true,
    [".dat"] = true,
    [".db"] = true
  })[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):sub(-3)] ~= nil or ({
    [".bin"] = true,
    [".cpl"] = true,
    [".dat"] = true,
    [".db"] = true
  })[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):sub(-4)] ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
