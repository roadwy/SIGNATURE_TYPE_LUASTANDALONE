if MpDetection.GetCurrentThreat().Name == "BrowserModifier:Win32/Linkhortry" then
  for _FORV_4_, _FORV_5_ in pairs(MpDetection.GetCurrentThreat().Resources) do
    if _FORV_5_.Schema == "file" and crypto.bitand(_FORV_5_.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
      Infrastructure_DetectionReportFolder(805306496, _FORV_5_.Path, true)
    end
  end
end
