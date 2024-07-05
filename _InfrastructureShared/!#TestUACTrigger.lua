if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_EXE then
  if (string.sub(string.lower(mp.GetUACMetadata().Info.ApplicationName), -24) == "exesampleuacdetected.exe" or string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -25) == "exesampleuacdetected.exe\"") and mp.TriggerScanResource("file", mp.GetUACMetadata().Info.ApplicationName) == mp.INFECTED then
    return mp.TRUE
  end
  if string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -62) == "exesampleuacdetected-9f298338-4c4e-49e8-bd3b-9a3d453c9b79.exe\"" then
    mp.TriggerScanResource("file", mp.GetUACMetadata().Info.ApplicationName)
    return mp.FALSE
  end
  if string.sub(string.lower(mp.GetUACMetadata().Info.ApplicationName), -58) == "uacsamplerequired-a9bd18c3-77b3-4796-a852-232135ad4e6b.exe" or string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -59) == "uacsamplerequired-a9bd18c3-77b3-4796-a852-232135ad4e6b.exe\"" then
    mp.TriggerScanResource("file", mp.GetUACMetadata().Info.ApplicationName)
    return mp.FALSE
  end
  if string.sub(string.lower(mp.GetUACMetadata().Info.ApplicationName), -59) == "uacsampleexpensive-1dd483a0-149d-4020-81af-a9b0b5a2f535.exe" or string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -60) == "uacsampleexpensive-1dd483a0-149d-4020-81af-a9b0b5a2f535.exe\"" then
    mp.TriggerScanResource("file", mp.GetUACMetadata().Info.ApplicationName)
    return mp.FALSE
  end
  if string.sub(string.lower(mp.GetUACMetadata().Info.ApplicationName), -55) == "uacsamplelowfi-811e7c62-ee68-4292-b4c1-17f1d4ce13a8.exe" or string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -56) == "uacsamplelowfi-811e7c62-ee68-4292-b4c1-17f1d4ce13a8.exe\"" then
    mp.TriggerScanResource("file", mp.GetUACMetadata().Info.ApplicationName)
    return mp.FALSE
  end
end
if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_COM and string.lower(mp.GetUACMetadata().Info.Clsid) == "48012511-82cc-48f3-ae5b-40c7401a5a09" and mp.TriggerScanResource("file", mp.GetUACMetadata().Info.ServerBinary) == mp.INFECTED then
  return mp.TRUE
end
if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_MSI then
  if mp.GetUACMetadata().Info.ProductName ~= "MyProductName-31995211-347d-4da9-ae9e-d0de2944d600" then
    return mp.FALSE
  end
  if mp.GetUACMetadata().Info.Version ~= "MyVersion-31995211-347d-4da9-ae9e-d0de2944d600" and mp.GetUACMetadata().Info.Version ~= "1.00.0000" then
    return mp.FALSE
  end
  if mp.GetUACMetadata().Info.Manufacturer ~= "MyManufacturer-31995211-347d-4da9-ae9e-d0de2944d600" then
    return mp.FALSE
  end
  return mp.TRUE
end
if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_AX and mp.GetUACMetadata().Info.SourceURL == "http://www.maliciousurl-695dba18-2bb9-429a-a9a6-fe89a0eb945e.com/" and mp.TriggerScanResource("file", mp.GetUACMetadata().Info.LocalInstallPath) == mp.INFECTED then
  return mp.TRUE
end
if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_PACKAGED_APP then
  if mp.GetUACMetadata().Info.ApplicationName ~= "AppName-e1db12d7-cc43-4412-8602-381d6b667a36" then
    return mp.FALSE
  end
  if mp.GetUACMetadata().Info.CommandLine ~= "CommandLine-e1db12d7-cc43-4412-8602-381d6b667a36" then
    return mp.FALSE
  end
  if mp.GetUACMetadata().Info.PackageFamilyName ~= "FamilyName-e1db12d7-cc43-4412-8602-381d6b667a36" then
    return mp.FALSE
  end
  if mp.GetUACMetadata().Info.ApplicationId ~= "AppId-e1db12d7-cc43-4412-8602-381d6b667a36" then
    return mp.FALSE
  end
  return mp.TRUE
end
return mp.FALSE
