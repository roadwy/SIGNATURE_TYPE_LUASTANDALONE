local L0_0, L1_1, L2_2, L3_3
L0_0 = {L1_1, L2_2}
L1_1 = "{934B156A-3D17-3981-B78A-5C138F423AD6}"
L2_2 = "{437B9306-2FDE-4054-A3C9-6B49507C12D0}"
L1_1 = Infrastructure_IE_DisableExtensions
L2_2 = L0_0
L1_1(L2_2)
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L2_2 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.GetRegValueAsString
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "Start Page")
  if L2_2 ~= nil then
    L3_3 = sysio
    L3_3 = L3_3.DeleteRegValue
    L3_3(L1_1, "Start Page")
  end
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\SearchScopes"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.GetRegValueAsString
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "DefaultScope")
  if L2_2 ~= nil then
    L3_3 = sysio
    L3_3 = L3_3.RegOpenKey
    L3_3 = L3_3("HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\SearchScopes\\" .. L2_2)
    if L3_3 ~= nil then
      sysio.DeleteRegKey(L3_3, nil)
    end
    sysio.DeleteRegValue(L1_1, "DefaultScope")
  end
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Infodelivery\\Restrictions"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.GetRegValueAsString
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "NoChangeDefaultSearchProvider")
  if L2_2 ~= nil then
    L3_3 = sysio
    L3_3 = L3_3.DeleteRegValue
    L3_3(L1_1, "NoChangeDefaultSearchProvider")
  end
  L3_3 = sysio
  L3_3 = L3_3.GetRegValueAsString
  L3_3 = L3_3(L1_1, "UsePolicySearchProvidersOnly")
  if L3_3 ~= nil then
    sysio.DeleteRegValue(L1_1, "UsePolicySearchProvidersOnly")
  end
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Google\\Chrome"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.GetRegValueAsString
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "DefaultSearchProviderEnabled")
  if L2_2 ~= nil then
    L3_3 = sysio
    L3_3 = L3_3.DeleteRegValue
    L3_3(L1_1, "DefaultSearchProviderEnabled")
  end
  L3_3 = sysio
  L3_3 = L3_3.GetRegValueAsString
  L3_3 = L3_3(L1_1, "DefaultSearchProviderKeyword")
  if L3_3 ~= nil then
    sysio.DeleteRegValue(L1_1, "DefaultSearchProviderKeyword")
  end
  if sysio.GetRegValueAsString(L1_1, "DefaultSearchProviderName") ~= nil then
    sysio.DeleteRegValue(L1_1, "DefaultSearchProviderName")
  end
  if sysio.GetRegValueAsString(L1_1, "DefaultSearchProviderSearchURL") ~= nil then
    sysio.DeleteRegValue(L1_1, "DefaultSearchProviderSearchURL")
  end
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Google\\Chrome\\Recommended"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.GetRegValueAsString
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "HomepageIsNewTabPage")
  if L2_2 ~= nil then
    L3_3 = sysio
    L3_3 = L3_3.DeleteRegValue
    L3_3(L1_1, "HomepageIsNewTabPage")
  end
  L3_3 = sysio
  L3_3 = L3_3.GetRegValueAsString
  L3_3 = L3_3(L1_1, "RestoreOnStartup")
  if L3_3 ~= nil then
    sysio.DeleteRegValue(L1_1, "RestoreOnStartup")
  end
  if sysio.GetRegValueAsString(L1_1, "ShowHomeButton") ~= nil then
    sysio.DeleteRegValue(L1_1, "ShowHomeButton")
  end
  if sysio.GetRegValueAsString(L1_1, "HomepageLocation") ~= nil then
    sysio.DeleteRegValue(L1_1, "HomepageLocation")
  end
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Google\\Chrome\\ExtensionInstallForcelist"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Google\\Chrome\\RestoreOnStartupURLs"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Chromium\\ExtensionInstallForcelist"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\181E2AE5727DE60F52EF26D90BC6919481601793"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\2FA3FB2570A7A859026C59A1C723E7EF9F9AF13D"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\4B953F30F1DE4DFEF894B136DAA155CEAFC243A0"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\65AFAA515036C38C9EC28248C453FB0F6B1E7094"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\8138B44330354E413DC52AF1DBFCA8BA1C0F6C0A"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\82F19360B15655A94E875A5B5F7844E2932FC2A6"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\883224FAB9D5BC431563A00AF10A79AA78087584"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\89B89723B7106A1926036B1469D2497B85841849"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\AB7E760DA2485EA9EF5A6EEE7647748D4BA6B947"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\B1E5407220D2E41A2045A5B183AE83F54E3C9643"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\BD22822F42C0B3F61AA0F30360EFB2A15068893B"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\C1437F2BC6F11F4806EAD857982457BF7828CE15"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\Disallowed\\Certificates\\D37F61D57CB0481F3D77EDAC7DE72196C4314E2C"
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
