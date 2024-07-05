local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -18))
if string.find(L0_0, "skype.exe") or string.find(L0_0, "lync.exe") or string.find(L0_0, "icq.exe") or string.find(L0_0, "pidgin.exe") or string.find(L0_0, "trillian.exe") or string.find(L0_0, "yahoomessenger.exe") or string.find(L0_0, "qq.exe") or string.find(L0_0, "msnmsgr.exe") or string.find(L0_0, "nlnotes.exe") or string.find(L0_0, "notes.exe") or string.find(L0_0, "notes2.exe") or string.find(L0_0, "thunderbird.exe") or string.find(L0_0, "msimn.exe") or string.find(L0_0, "winmail.exe") or string.find(L0_0, "excel.exe") or string.find(L0_0, "infopath.exe") or string.find(L0_0, "onenote.exe") or string.find(L0_0, "powerpnt.exe") or string.find(L0_0, "visio.exe") or string.find(L0_0, "winword.exe") then
  return mp.INFECTED
end
return mp.CLEAN
