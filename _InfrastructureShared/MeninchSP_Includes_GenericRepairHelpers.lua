if string.find(Remediation.Threat.Name, "BrowserModifier:Win32/MeninchSP", 1, true) then
  Infrastructure_CleanToolbarByName("Iminent Toolbar")
  Infrastructure_CleanBHOByNameList({
    "IMinent WebBooster",
    "iminent Helper Object"
  })
  Infrastructure_CleanUninstallByDisplayNameList({
    "Iminent",
    "Iminent Toolbar on IE and Chrome"
  })
  Infrastructure_CleanSearchByDisplayName("SearchTheWeb")
end
