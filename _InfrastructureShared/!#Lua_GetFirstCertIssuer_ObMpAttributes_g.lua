local L0_0, L1_1
L0_0 = 197
L1_1 = 133
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 or pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].Size < L0_0 + L1_1 or mp.getfilesize() <= pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA or pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].Size > mp.getfilesize() - pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA + L0_0, L1_1):find("Sectigo", 1, true) then
  mp.set_mpattribute("Lua:Issuer.Sectigo")
end
if mp.readfile(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA + L0_0, L1_1):find("thawte", 1, true) then
  mp.set_mpattribute("Lua:Issuer.thawte")
end
if mp.readfile(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA + L0_0, L1_1):find("COMODO", 1, true) then
  mp.set_mpattribute("Lua:Issuer.COMODO")
end
if mp.readfile(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA + L0_0, L1_1):find("Microsoft", 1, true) then
  mp.set_mpattribute("Lua:Issuer.Microsoft")
end
if mp.readfile(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA + L0_0, L1_1):find("DigiCert", 1, true) then
  mp.set_mpattribute("Lua:Issuer.DigiCert")
end
mp.readprotection(true)
return mp.CLEAN
