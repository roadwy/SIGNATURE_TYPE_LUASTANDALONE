local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isvbpcode
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  "mpolkiujhy",
  "gtfrdeszde",
  "jukihygtfe",
  "ioknhbgvfc",
  "fvfderfzdt",
  "loihytgvfd",
  "juigvbcfdx",
  "gytvbncvgk",
  "rfgtedfr",
  "loofnbdfe",
  "ujtgyhrftgc",
  "hytgfredcv",
  "mpolikjutd",
  "ggergherh",
  "kiyhencujf",
  "loiefghbvf",
  "thrthrthrth",
  "mlohytbnhg",
  "utrthrth"
}
for _FORV_6_ = 1, #L1_1 do
  if L0_0.CompanyName == L1_1[_FORV_6_] then
    return mp.INFECTED
  end
end
L1_1 = {
  "asecfrgvtfd",
  "frdehtjykuh",
  "bgvfcdxserd",
  "edtfvgbhnju",
  "fgdrsedcfvd",
  "ireeghjkrdy",
  "juinbvfgtrd",
  "lkgbvcrtffr",
  "adesfrgtcvbee",
  "dfgtyhnjhgf",
  "afuhjikrgbfv",
  "ujhytgfvbng",
  "mposednhytf",
  "ggergbbneghe",
  "kafujncriut",
  "yhgtfnhytgfn",
  "hezezeezffzf",
  "hujybgvgfcd",
  "hhrthrthr"
}
for _FORV_6_ = 1, #L1_1 do
  if L0_0.ProductName == L1_1[_FORV_6_] then
    return mp.INFECTED
  end
end
return _FOR_.CLEAN
