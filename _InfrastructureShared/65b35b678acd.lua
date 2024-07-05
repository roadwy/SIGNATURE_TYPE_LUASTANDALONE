local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
L1_1 = {
  "weather.exe",
  "weathertab.exe",
  "tone.exe",
  "strength.exe",
  "energy.exe",
  "entertainment.exe",
  "bloom.exe",
  "health.exe",
  "healthy.exe",
  "cash.exe",
  "calculator.exe",
  "diet.exe",
  "musicalm.exe",
  "mp3converter.exe",
  "pdfconverter.exe",
  "pdftoword.exe",
  "prime.exe",
  "routes.exe",
  "markets.exe",
  "pacmanpc.exe",
  "valerie.exe",
  "youtubetomp3.exe",
  "youtubedownloader.exe"
}
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if _FORV_6_ == L0_0 then
    return mp.INFECTED
  end
end
return mp.CLEAN
