local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = ""
else
  L1_1 = L1_1 or L0_0
end
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -11
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= "browser.exe" then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -10
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= "chrome.exe" then
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -10
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= "exodus.exe" then
      L1_1 = string
      L1_1 = L1_1.sub
      L2_2 = L0_0
      L3_3 = -11
      L1_1 = L1_1(L2_2, L3_3)
      if L1_1 ~= "firefox.exe" then
        L1_1 = string
        L1_1 = L1_1.sub
        L2_2 = L0_0
        L3_3 = -10
        L1_1 = L1_1(L2_2, L3_3)
        if L1_1 ~= "instup.exe" then
          L1_1 = string
          L1_1 = L1_1.sub
          L2_2 = L0_0
          L3_3 = -8
          L1_1 = L1_1(L2_2, L3_3)
          if L1_1 ~= "perl.exe" then
            L1_1 = string
            L1_1 = L1_1.sub
            L2_2 = L0_0
            L3_3 = -12
            L1_1 = L1_1(L2_2, L3_3)
            if L1_1 ~= "postgres.exe" then
              L1_1 = string
              L1_1 = L1_1.sub
              L2_2 = L0_0
              L3_3 = -11
              L1_1 = L1_1(L2_2, L3_3)
              if L1_1 ~= "textnow.exe" then
                L1_1 = string
                L1_1 = L1_1.sub
                L2_2 = L0_0
                L3_3 = -10
                L1_1 = L1_1(L2_2, L3_3)
              end
            end
          end
        end
      end
    end
  end
elseif L1_1 == "wowapp.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_sigattr_event_count
L2_2 = 16385
L1_1 = L1_1(L2_2)
if not (L1_1 < 5) then
  L1_1 = mp
  L1_1 = L1_1.get_sigattr_event_count
  L2_2 = 16386
  L1_1 = L1_1(L2_2)
  if not (L1_1 < 5) then
    L1_1 = mp
    L1_1 = L1_1.get_sigattr_event_count
    L2_2 = 16389
    L1_1 = L1_1(L2_2)
  end
elseif L1_1 < 5 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "|#vc|$$$|$$a|$ac|0|000|001|002|003|004|005|006|007|008|009|00c|010|011|07g|07i|08i|09i|09t|1|1033|10t|113|11t|123|13t|18|1cd|1cl|1pa|1pe|1st|2|210|2bp|2fs|3|323|36|3d|3d4|3df8|3dm|3dmf|3dmlw|3ds|3dv|3dxml|3fr|3g2|3ga|3gp|3gp2|3gpp|3me|3mf|3mm|3pe|3pr|4|411|4db|4dd|4dindx|4dindy|4dl|4dr|4mp|5|500|509|6|602|7|73b|73i|7gz|7z|7zip|8|8ba|8bc|8be|8bf|8bi8|8bl|8bs|8bx|8by|8li|8xi|9|900|9png|_p|_vc|a|a06|a2c|a2u|a3d|a3s|aa|aa3|aab|aac|aaf|aam|aas|ab|ab4|abbu|abc|abd|abf|abk|abm|abr|abs|abu|abw|ac|ac2|ac3|acb|acbl|acc|accd|accda|accdb|accdc|accde|accdp|accdr|accdt|accdu|accdw|accft|ace|ach|aci|acl|acm|acp|acr|acrodata|act|acx|ada|adb|ade|adf|adi|adml|admx|adn|adp|adpb|adr|ads|adt|adz|aec|aep|aepx|aes|aet|aex|af2|af3|aff|afi|afm|afp|aft|afx|agd1|agdl|agif|agp|ahd|ahk|ai|ai3|ai4|ai5|ai6|ai7|ai8|aia|aic|aif|aifc|aiff|aim|aiml|ain|aip|air|ais|ait|ak|al|alac|albm|alf|alk|allet|alt|altr|alz|am|amf|amj|amr|amu|amv|amx|amxx|an8|ani|anim|ans|aob|aoi|ap|apd|ape|api|api__non_opt|api_non_opt|apj|apk|apl|apm|apng|apnx|app|application|apr|aps|apt|apx|ar|arc|arch00|ari|arj|aro|arp|arr|art|artwork|arv|arw|as|as3|as4|asa|asc|ascii|ascx|ase|asef|asf|ashdisc|ashx|ask|asm|asmx|asp|aspx|asr|ass|asse|asset|asv|asvx|asw|asx|asy|atb|ate|ati|atom|aty|au|au3|aup|automaticdestinations-ms|aux|av|ava|avatar|avi|avs|awdb|awg|awp|awt|aww|ax|axx|azf|azs|azw|azw1|azw3|azw4|azz|b|b2a|b3d|b6t|ba0|bac|back|backup|backupdb|bad|bak|bank|bar|bas|bash|bat|bay|bbb|bbs|bc!|bc6|bc7|bc8|bc9|bcf|bck|bcm|bcp|bcpio|bd|bd2|bd3|bdb|bdc|bdcr|bdcu|bdd|bdf|bdg|bdi|bdm|bdmv|bdp|bdr|bds|bdsproj|bdw|bdx|bean|bee|ben|bes|bex|bexpk|bf2|bfa|bfb|bfe|bff|bfs|bgeo|bgt|bgz|bhx|bi8|bib|bibtex|bic|big|bik|bikey|bim|bin|bitmap|bk|bk2|bk5|bkc|bkf|bkp|bks|bkup|blend|blf|blkrt|bln|blob|block|blp|bm2|bmc|bmf|bml|bmp|bmx|bmz|bna|bnd|boc|bok|bookmarks|box|boz|bp2|bp3|bpdr|bpdu|bpf|bpk|bpl|bpn|bpw|brd|brep|brk|brn|browser|brt|brw|bsa|bsarwv|bsc|bsdl|bsdr|bsdu|bsh|bsk|bson|bsp|bss|btd|bti|btif|btoa|btq|btr|bud|bvd|byu|bz|bz2|bzabw|bzip|bzip2|c|c++|c2|c2d|c4|c4d|ca|cab|cache|cad|cadp|caf|cag|cal|cal3d|cals|cam|camp|camproj|can|cap|capx|car|cas|cash|cat|catdrawing|catpart|catprocess|catproduct|cb|cbf|cbl|cbm|cbp|cbr|cbu|cbz|cc|ccc|ccd|ccf|cch|ccm|ccn|cco|ccp4|ccs|cd|cd5|cda|cdb|cdc|cdf|cdf-ms|cdg|cdi|cdl|cdmm|cdmp|cdmt|cdmtz|cdmz|cdr|cdr3|cdr4|cdr5|cdr6|cdrw|cdt|cdx|ce1|ce2|ceb|cef|cer|cerc|cert|cf|cf8|cf9|cfc|cfdi|cfg|cfl|cfm|cfml|cfn|cfp|cfr|cfu|cgf|cgi|cgm|cgn|cgp|cgr|ch|cha|chart|chg|chk|chm|chml|chord|chr|chrt|chs|cht|ci|cib|cif|cil|cimg|cin|cineon|cir|cit|ckp|clas|class|clb|cld|client|clj|clk|clkw|clp|clr|cls|clx|cma|cmb|cmd|cmeta|cmf|cmp|cms|cmsc|cmt|cmx|cnf|cng|cnm|cnt|cntk|cnv|cnv_1033|co|coa|cob|cod|col|colz|com|comments|compositefont|con|conf|config|contact|core3d|cov|cp|cpa|cpc|cpd|cpf|cpg|cpi|cpio|cpl|cpl_0001|cpp|cps|cpt|cpw|cpx|cqk|cr2|craw|crd|crl|crp|crt|crw|crwl|crx|cry|crypt|crypt7|crypted|cryptra|cs|csd|csh|csi|csl|cso|csproj|csr|css|csv|csx|csy|ct|ctl|ctm|ctt|cty|cub|cue|cur|cus|customdestinations-ms|cv5|cvg|cvi|cvs|cvx|cw|cwf|cwt|cxf|cxx|cyi|d|d07|d3dbsp|d64|daa|dac|daconnections|dacpac|dad|dadiagrams|dae|daf|dal|dap|dar|das|daschema|dash|dat|dat_1033|data|database|dayzprofile|dazip|db|db-journal|db-shm|db-wal|db0|db2|db3|db_journal|dba|dbb|dbc|dbf|dbfv|dbk|dbold|dbpro123|dbr|dbs|dbt|dbu|dbv|dbx|dc2|dc3|dc4|dca|dcb|dcf|dch|dcm|dco|dcp|dcr|dcs|dct|dcu|dcx|dd|ddc|ddcx|ddd|ddi|ddl|ddoc|ddrw|dds|ddv|ddz|deb|ded|def|default|defx|dem|deploy|depot|der|des|desc|design|desklink|dev|deviceids|devicemetadata-ms|dex|df|df1|dfd|dff|dfm|dfp|dfproj|dft|dg|dgc|dgk|dgn|dgs|dgt|dhs|dia|diagpkg|dib|dic|dicom|dif|dii|dim|dime|dip|dir|directory|disc|disk|dist|distz|dit|divx|diz|djv|djvu|dl|dlc|dle|dll|dll_0001|dll_0001_1033|dll_0002|dll_0004|dll_0005|dll_1033|dll_1036|dll_3082|dll_apollo|dll_non_opt|dlm|dls|dlv|dlv3|dlv4|dm3|dmg|dmi|dmo|dmp|dms|dmt|dnc|dne|dng|dnl|dob|doc|docb|docm|docx|docxml|docz|dos|dot|dotm|dotx|dotx_1033|dotxsi|dox|dp1|dpk|dpl|dpm|dpp|dpr|dproj|dpv|dpx|dqy|drc|drf|drv|drw|drz|ds|ds4|dsa|dsb|dsc|dsf|dsk|dsm|dsn|dsp|dspf|dss|dst|dsv|dt|dt2|dta|dtau|dtd|dtl|dtr|dts|dtsx|dtv|dtw|dub|dub_1033|dub_1036|dub_3082|dun|dv|dvd|dvi|dvl|dvr|dvr-ms|dvx|dwb|dwf|dwfx|dwg|dwk|dwt|dx|dxb|dxe|dxf|dxg|dxi|dxl|dxr|dxt|e|e2d|e4a|eap|ear|easm|ebc|ebd|ebk|ebq|ec8|ecf|ecml|eco|ecw|ecx|edb|eddx|edif|edml|edoc|edrw|edx|efd|efi|efl|efp|efr|efs|efsl|eftx|efu|efx|egc|egg|egt|eif|eio|eip|eit|el|elf|elfo|elm|email|emb|emc|emd|emf|eml|emlx|emp|emz|enc|ens|ent|enx|enz|eot|ep|epa|epb|epf|epk|epp|eprt|eps|eps2|eps3|eps_1033|epsf|epsp|epub|eqb|eql|erbsql|erf|err|ert|ese|esf|esk|esm|ess|esv|esw|es~|etf|etl|etq|ets|etx|euc|ev1|ev2|ev3|evm|evo|evtx|evy|ex|ex4|excellon|exe|exe1a052|exe_0001|exe_0002|exe_0004|exf|exif|exp|exr|ez|f|f4v|f77|f90|fa1|fa2|fac|fact_sop|fadein|fae|fal|faq|fax|fb2|fb3|fbf|fbk|fbl|fbw|fbx|fca|fcd|fcf|fcp|fcpa|fcpr|fcr|fdb|fdbx|fdf|fdr|fds|fdt|fdx|fdxt|fe|feed-ms|feedsdb-ms|fef|fes|ff|ff1|ffd|fff|ffs_db|fft|ffu|fh|fh10|fh11|fh3|fh4|fh5|fh6|fh7|fh8|fh9|fhd|fi2|fic|fid|fido|fif|fig|fil|file|fim|fl|fla|flac|flb|flc|flf|flg|fli|flic|flk|flka|flkb|flkw|flm|flp|flr|flt|flt_1033|flv|flvv|flwa|flx|fm|fm5|fmb|fmd|fml|fmod|fmp|fmp12|fmpsl|fmt|fmv|fmx|fmz|fodt|fol|fon|for|forge|fos|fountain|fp|fp3|fp4|fp5|fp7|fpenc|fpk|fpos|fpp|fpt|fpx|frf|frm|frp|frt|frw|frx|fs|fsdb|fsh|fss|ft10|ft11|ft7|ft8|ft9|fth|ftn|ftp|ftx|fwdn|fx|fx0|fx1|fxc|fxg|fxh|fxp|fxr|fxw|fyc|fzb|fzv|g|g3|gadget|gam|gar|gbk|gblorb|gbr|gcdp|gcode|gdb|gdl|gdoc|gdraw|gdsii|ge2|ged|gem|geo|gfb|gfe|gfi|gfie|gfx|ggr|gho|ghost|ghs|gif|gif_1033|gih|gim|gio|gl|gla|glm|glox|gm6|gmbck|gmd|gmk|gml|gmmp|gmspr|gnc|gnumeric|go|gpc|gpd|gpg|gpl|gpn|gpx|gra|gray|grb|grey|grf|grl|grm|gro|grob|group|groups|grp|grs|grw|gry|gsb|gsd|gsf|gsheet|gsm|gtable|gtar|gtc|gthr|gto|gtp|gv|gwi|gxk|gz|gzig|gzip|h|h!)|h++|h10|h11|h12|h1c|h1d|h1h|h1k|h1q|h1s|h1t|h1w|h3m|h4r|h5|h_1033|ha|hbi|hbk|hbx|hdb|hdd|hdf|hdk|hdmov|hdp|hdr|hds|helpcfg|helpcfg6|hex|hh|hht|hi|hid|hid2|hif|hip|hipnc|his|hit|hkdb|hkf|hkx|hlp|hol|hol_1033|hpf|hpg|hpgl|hpi|hpl|hplg|hpp|hpt|hqx|hs|hsr|hst|hta|htc|htm|html|htpasswd|hts|htt|hvpl|hwp|hxc|hxc_1033|hxk|hxk_1033|hxl|hxn|hxs|hxs_1033|hxt|hxt_1033|hxx|hz|i2b|i3d|iam|ib|iban|ibank|ibd|ibdata|ibooks|ibz|icb|icc|icd|icm|icn|ico|icon|icpr|ics|icxs|id|idb|idc|idea|idf|idl|idml|idw|idx|idx_dll|idx_dll_1033|ie5|ie6|ie7|ie8|ie9|iec|ief|iem|ifc|iff|ifo|ifx|iges|igt|igx|ihtml|ihx|iif|iii|iil|iiq|ilg|image|imb|imd|ime|img|img_jpg|imh|iml|imm|imp|ims|in0|inc|incpas|ind|indb|indd|index|indl|indt|inf|inf_loc|info|info_|ini|ini0|ini2|ini4|ini8|ini_1033|inid|inih|inil|inip|init|inix|ink|ins|int|int?|interim|intu|inv|inx|iobj|ipa|ipd|ipdb|ipe|ipf|ipg|ipn|ipt|ipx|iqy|ird|iros|irs|iso|isp|iss|issue|isu|isz|itc2|itdb|itf|itl|itm|its|its_1036|its_3082|itw|iv2i|ivf|iwa|iwd|iwi|j|j2c|j2e|j2k|ja|jac|jad|jag|jar|jarvis|jas|jav|java|jb2|jbc|jbig|jbig2|jbmp|jbr|jc|jdb|jfif|jge|jgz|jia|jif|jiff|jis|jks|jmf|jng|jnt|joe|jp1|jp2|jpc|jpe|jpeg|jpf|jpg|jpg2|jpg_1033|jpm|jpn|jps|jpw|jpx|jrs|jrtf|js|jsd|jsda|jsf|jsfl|jsm|json|jsonb|jsp|jspa|jspx|jss|jst|jsx|jt|jtd|jtf|jtp|jtt|jtx|just|jwl|jxr|k1f|k25|k2p|kar|karbon|kb1|kb7|kbx|kc2|kcf|kcl|kd3|kdb|kdbx|kdc|kde|kdi|kdk|kes|kexi|kexic|kexis|key|keynote|keystore|kf|kfo|kic|kix|klg|klq|kml|kmo|kmy|kmz|knt|kon|kor|kpdx|kpg|kpr|kpt|ksd|kvp|kwd|kwm|kwt|kxp|kys|l|laccdb|las|lasso|lassoapp|lastlogin|latex|lay|lay6|layout|lbf|lbi|lbl|lbm|lbt|lcc|lcd|lcf|lck|lcn|ldb|ldc|ldf|ldif|ldr|ldw|lef|let|lex|lex_1033|lex_1036|lex_3082|lgb|lgc|lgf|lgp|lgt|lha|lhr|lib|library-ms|lic|lid|lin|lis|lisp|list|lit|litcofee|litemod|litesql|ljp|lk_parts|lld|lmk|lmr|lng|lngttarch2|lnk|lnt|localstorage|localstorage-journal|lock|locked|log|log1|log2|log_0|lp2|lpa|lpd|lpr|lrc|lrf|lrm|ls|lsf|lst|lsx|ltm|ltr|lts|ltx|lua|lue|luf|lvivt|lvl|lwo|lwp|lws|lxa|lxfml|lxo|lyc|lyt|lyx|lz|lzh|lzma|lzo|lzx|m|m10|m11|m12|m13|m14|m15|m16|m1a|m1v|m2|m2a|m2p|m2t|m2ts|m2v|m3d|m3u|m3u8|m4|m4a|m4b|m4p|m4r|m4u|m4v|ma|mab|mac|maf|maff|mag|mam|man|manifest|map|mapimail|maq|mar|master|mat|matlab|maw|max|mb|mbd|mbm|mbox|mbsb|mbx|mcd|mcfi|mcfp|mcgame|mcl|mcmeta|mcrp|mcs|mcw|mcx|md|md0|md1|md2|md3|md5|md5txt|mda|mdb|mdbackup|mdbhtml|mdc|mddata|mde|mdf|mdi|mdinfo|mdl|mdlp|mdn|mdp|mds|mdt|mdw|mdx|me|mef|mel|mell|mem|menu|meo|mesh|met|meta|mfd|mfl|mft|mfw|mgcb|mgmf|mgmt|mgmx|mgtx|mht|mhtm|mhtml|mib|mic|micro|mid|midi|mim|mime|min|mip|mjd|mjf|mka|mkd|mkidx|mkv|ml|ml2|ml9|mlb|mlc|mll|mllr|mlp|mlx|mm3d|mm6|mm7|mm8|mmat|mmb|mme|mmf|mml|mmo|mmw|mmx|mn1|mn2|mn3|mn4|mn5|mn6|mn7|mn8|mn9|mne|mng|mni|mno|mnp|mnr|mnt|mnu|mny|mobi|mobileprovision|mocha|mod|model|mof|mon|mone|money|moneywell|moov|mos|mov|movie|moz|mp1|mp2|mp2v|mp3|mp4|mp4v|mpa|mpb|mpc|mpd|mpe|mpeg|mpeg4|mpega|mpf|mpg|mpga|mpj|mpk|mpkg|mpls|mpo|mpp|mpq|mpqge|mpqworld|mpt|mpu|mpv|mpv2|mpv4|mq4|mqh|mql|mrbak|mrc|mrg|mrimg|mrq|mrw|mrwref|mrxs|ms|ms11|ms12|msc|mse|msf|msg|msg_1033|msi|msmessagestore|mso|msp|msstyles|mst|msu|mt9|mta|mtb|mte|mtrl|mts|mud|mui|mum|mus|mvb|mwb|mwi|mwp|mws|mx|mx0|mxd|mxf|mxl|mxlz|mxp|mxu|myd|mydocs|mye|myf|myi|myl|myo|myox|mzz|n43|n64|nam|nap|nav|nba|nbd|nbf|nbi|nbr|nbu|nbz|ncd|ncf|nco|ncr|nct|nd|ndd|ndf|nds|ndx|nef|nes|net|new|nexe|nfl|nfo|ngr|nif|nix|njx|nk2|nl2|nlm|nlp|nls|nlt|nml|nng|nni|nop|note|notes|now|npc|npk|nrf|nrg|nri|nrt|nru|nrw|ns2|ns3|ns4|nsd|nsf|nsg|nsh|nt|ntf|ntl|nu3|number|nup|nv|nv2|nvram|nwb|nwctxt|nx1|nx2|nxl|nyf|nzb|o|oa4|oab|oac|oasis|obd|obe|obi|obj|obm|oc3|oc4|oc5|ocd|ocdc|oce|oci|ocr|ocx|oda|odb|odc|odf|odg|odi|odm|odo|odp|ods|odt|oeaccount|oet|ofc|off|ofl|ofr|ofs|oft|ofx|oga|ogex|ogg|ogm|ogv|oil|ok|olb|old|old19bed|omeg|omf|omg|one|onepkg|onepkg_1033|onetoc2|op|op_labor|op_notes|op_skill|opd|openaccess|openbsd|openexr|opf|opg|oplc|opml|ops|opt|opus|oqy|or4|ora|orf|org|ori|orp|ort|orx|ost|ota|otf|otg|oth|oti|otp|ots|ott|ova|overridetasks|ovf|ovp|ovpn|ovr|owc|owg|owl|oxps|oxt|oyx|ozb|ozj|ozt|p|p08|p10|p12|p2i|p65|p7b|p7c|p7m|p7r|p7s|p96|p97|pab|pac|pack|package|packed|pages|pak|pal|pam|pan|pano|pap|papa|paq|par|pas|pat|patch|pb|pbd|pbf|pbi|pbk|pbl|pbm|pbo|pbp|pbs|pc1|pc2|pc3|pcd|pcif|pck|pcs|pct|pcv|pcx|pcxm|pd|pd6|pdb|pdc|pdd|pdf|pdfx|pdi|pdm|pdn|pdp|pds|pdt|pdx|pe4|pef|peg|pehape|pem|per|perl|pf|pfa|pfb|pfd|pff|pfi|pfl|pfm|pfq|pfr|pfs|pfv|pfx|pg|pgd|pgf|pgm|pgp|phm|phn|php|php2|php3|php4|php5|php6|php7|phps|phpt|phpx|phpxx|pht|phtm|phtml|phy|phys|pi1|pi2|pi3|pic|picnc|pict|pid|pif|pins|pip|pipe|pix|pjpeg|pjpg|pjt|pkb|pkey|pkg|pkh|pko|pkpass|pks|pl|plan|plantuml|plb|plc|pli|plist|pln|pls|plt|plugin|plus_muhd|ply|pm|pm!|pma|pmd|pme|pmg|pmi|pmj|pmk|pml|pmm|pmo|pmp|pmr|pmt|pmv|pmx|pnc|pnd|pnf|png|png_1033|pni|pnm|pnq|pns|pntg|pnx|pnz|po|pobj|poc|pop|por|pot|potm|potx|potx_1033|pov|pp|pp4|pp5|ppa|ppam|ppd|ppdf|ppf|ppj|ppk|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|ppz|pqb|pqi|pr0|pr1|pr2|pr3|pr4|pr5|prc|pre|pref|prel|prf|prg|pri|priv|private|prj|prm|prn|pro|pro_d370dfe0|profile|propdesc|props|prpr|prproj|prt|prtl|prw|prx|ps|ps1|ps1xml|ps_2_0|ps_4_0|psa|psafe3|psark|psb|psc|psc1|psd|psd1|psdx|pse|psf|psid|psk|psm|psm1|psmodel|psp|pspbrush|pspimage|pspscript|psq|psql|pst|psw|psw6|pta|ptb|ptdb|pte|ptg|pth|ptk|ptl|ptn|ptn2|pts|ptx|ptxml|pu|pub|puz|pva|pvc|pvj|pvm|pvr|pvs|pwa|pwd|pwf|pwi|pwl|pwm|pwr|px|pxa|pxl|pxn|pxp|pxr|py|pyc|pyd|pyo|pyt|pyw|pz3|pza|pzl|pzp|pzs|q00|q01|q06|q07|q08|q09|q43|q98|qb1|qb20|qba|qbb|qbbackup|qbi|qbk|qbm|qbmb|qbmd|qbo|qbp|qbr|qbsdk|qbt|qbw|qbwin|qbx|qby|qbz|qch|qcn|qcow|qcow2|qcp|qdb|qdf|qdfx|qdl|qdt|qed|qel|qem|qfi|qfx|qic|qif|qix|qm|qme|qmg|qml|qmt|qmtf|qnx|qob|qpb|qpd|qpg|qph|qpi|qpw|qpx|qry|qsd|qsm|qss|qst|qt|qtb|qtc|qtif|qtiq|qtl|qtq|qtr|qtx|que|quic|quo|qvd|qw5|qwc|qwmo|qxf|qxp|r|r00|r01|r02|r03|r3d|ra|ra2|raa|rad|raf|ram|rar|ras|rat|raw|rb|rbw|rc|rc2|rcf|rcs|rctd|rcu|rda|rdb|rdds|rdf|rdi|rdl|rdlc|rdo|rdp|rdy|re4|re4rda|readme|reb|rec|recipients|recipientsbackup0|recipientsbackup1|recipientsbackup2|recipientsbackup3|recipientsbackup4|recipientsbackup5|recipientsbackup6|recipientsbackup7|recipientsbackup8|recipientsbackup9|red|reds|reg|regtrans-ms|rel|rep|res|result|resx|rev|rex|rf|rfa|rfp|rft|rgb|rgbe|rgf|rgn|rgss3a|rgx|rib|ric|rif|riff|rik|rim|rin|ris|rix|rjs|rk|rkt|rktl|rle|rlf|rli|rll|rll_1033|rm|rmf|rmi|rmm|rmp|rms|rmvb|rmx|rn|rnc|rng|rnx|rofl|rom|rp|rpb|rpd|rpf|rpm|rpo|rpt|rqy|rri|rrt|rs|rsa|rsb|rsd|rsdf|rsml|rsp|rspt|rsr|rsrc|rss|rss+xml|rst|rsw|rt|rtd|rte|rtf|rtg|rtp|rts|rtsp|rtx|rul|rum|run|rv|rvm|rvt|rw2|rwl|rwx|rwz|rx2|rx3|rz|rzk|rzn|rzx|s|s12|s19|s2mv|s3|s3db|s3m|s7z|sab|sad|saf|safe|safetext|sai|saj|sam|sam_1033|sap|sapdata|sas7bdat|sat|sav|save|say|sb|sba|sbc|sbd|sbf|sbs|sbx|sc2save|scad|scala|scan|scc|scd|scdoc|sce|scf|sch|sci|scm|scn|scp|scpt|scr|scriv|scrivx|sct|scv|scw|scx|sd0|sd1|sd2|sd7|sda|sdb|sdc|sdd|sdf|sdi|sdm|sdn|sdo|sdoc|sdp|sdpx|sds|sdt|sdw|sdx|sdy|sea|seam|search-ms|secure|sed|seed|sef|sel|sen|sep|seq|ser|serv_ops|ses|session|set|setpay|setreg|sfc|sfera|sfs|sfv|sfw|sfx|sgcml|sgi|sgl|sgm|sgml|sgz|sh|shar|shf|shp|shr|shs|shtm|shtml|shw|shy|si|sia|sib|sic|sid|sidd|sidn|sie|sig|sii|sis|sit|sitx|sk1|sk2|skb|skcard|skd|skf|skg|skl|skm|sko|skp|skt|sla|slagz|sld|sldasm|slddrt|slddrw|sldm|sldprt|sldx|slf|slk|slm|sln|slp|sls|slt|slx|slxp|smd|sme|smf|smi|smil|smk|smm|smp|smr|sms|sn1|sna|snagitstamps|snagstyles|snd|snk|snp|snt|snx|so|soap|sob|soft|sol|sot|spa|spb|spd|spe|spef|spf|sph|spi|spj|spk|spl|splus|spp|spq|spr|spro|sqb|sql|sqli|sqlite|sqlite-journal|sqlite-shm|sqlite-wal|sqlite2|sqlite3|sqlitedb|sqllite|sqm|sqx|sr2|srb|src|srec|srf|srp|srs|srt|srv|srw|srx|ssa|ssc|ssfn|ssg|ssh|ssi|ssk|ssm|sso|sss|sst|st|st4|st5|st6|st7|st8|stc|std|ste|step|stf|stg|sti|stil|stk|stl|stm|stn|store|stp|str|strings|stt|stw|stx|sty|sub|sud|suf|sum|sumo|suo|sup|sv|sv2i|sv4cpio|sv4crc|sva|svc|svf|svg|svgz|svi|svr|swa|swatch|swd|swf|swf1|swg|swidtag|swift|switch|sxc|sxd|sxg|sxi|sxm|sxw|symbolmap|syncdb|syncmanagerlogger|sys|t|t00|t01|t02|t03|t04|t05|t06|t07|t08|t09|t10|t11|t12|t13|t14|t15|t2b|t3|t4|t99|ta1|ta2|ta4|ta5|ta6|ta8|ta9|tab|tag|tak|tango|tar|tarbz2|targa|targets|targz|tasks|tav|tax|tax0|tax1|tax2|tax2013|tax2014|tax2015|tax2016|tb0|tb2|tb3|tbb|tbc|tbh|tbi|tbk|tbl|tbn|tbp|tbz|tbz2|tc|tch|tcl|tct|tcw|tcx|tdf|tdi|tdl|tdr|tdt|te|teacher|temp|temp1234|tex|texi|texinfo|text|tf|tfc|tff|tfx|tg|tg4|tga|tgz|tha|theme|thm|thmx|thp|thumb|tib|tif|tiff|tiger|tis|tjp|tkr|tlb|tlc|tld|tlg|tlpdb|tlx|tlz|tm|tm2|tm_|tmd|tme|tmp|tmp-tmp|tmv|tmx|tn|tne|toast|toc|tom|tor|torrent|tp|tpc|tpi|tpl|tpu|tpx|tr|trc|trelby|trm|trn|troff|trp|trx_dll|trx_dll_1036|trx_dll_3082|ts|tsf|tsk|tsp|tsv|tsx|tt10|tt11|tt12|tt13|tt14|tt15|tt20|tta|ttarch|ttc|ttf|tts|ttz|tu|tur|turtle|tvc|tvj|tx|txd|txf|txn|txt|txz|u08|u10|u11|u12|u3d|u3i|uasset|uax|uc2|ucd|uce|udb|udeb|udf|udl|udt|uea|ufo|ufr|uga|uha|uif|uin|uls|umx|unauth|uni|uninstall|unity|unity3d|unr|unrec|unt|unv|unx|uof|uop|uos|uot|upd|upf|upk|upoi|url|urls|usa|user|usertile-ms|usr|ustar|usx|ut2|ut3|utc|utf8|utx|utxt|uu|uud|uue|uvx|uxdc|uxx|v|v12|v2d|v2i|v30|val|vap|vault|vb|vbg|vbk|vbm|vbox|vbp|vbpf|vbproj|vbr|vbs|vbx|vc|vc6|vcard|vcd|vcf|vcproj|vcs|vct|vcxproj|vda|vdb|vdf|vdi|vdo|vdproj|vdr|vdw|vdx|vec|vef|veg|ver|vfd|vff|vfl|vfs0|vfs4|vhd|vhdl|vhdx|vimproj|vip|vir|vlc|vlm|vlt|vmb|vmc|vmdk|vmem|vmf|vml|vmsd|vmsn|vmss|vmt|vmtm|vmwarevm|vmx|vmxf|vnd|vnt|vo|vob|vol|vor|vp|vpd|vpe|vpk|vpol|vpp_pc|vpx|vrb|vrg|vrml|vrp|vs|vs_1_1|vs_4_0|vsch|vsd|vsdm|vsdx|vsi|vsl|vsm|vss|vssettings|vst|vstm|vstx|vsv|vsw|vsx|vtf|vtm|vtml|vtx|vud|vue|vvd|vw|vwx|vyp|vyr|w3d|w3g|w3x|wab|wac|wad|wadata|waindx|wajournal|wallet|wallt|wamodel|war|wav|wave|waw|wax|wb1|wb2|wb3|wbc|wbd|wbk|wbm|wbmp|wbverify|wbz|wcf|wcm|wdb|wdf|wdgt|wdp|wdx|webarchive|webdoc|webm|webp|wer|wgl|wgz|whtt|wi|wid|wih|wim|win|win32manifest|wings|wire|wk1|wk3|wk4|wks|wll|wls|wlt|wm|wma|wmb|wmd|wmdb|wmf|wml|wmlc|wmls|wmlsc|wmmp|wmo|wmp|wms|wmv|wmw|wmx|wmz|wn|woff|workflow|wotrep|wotreplay|wow|wp|wp4|wp5|wp6|wp7|wpa|wpb|wpd|wpe|wpg|wpg_1033|wpk|wpl|wps|wpt|wpw|wri|wrl|wsb|wsc|wsd|wsf|wsh|wt|wtd|wtf|wtfrwd|wtv|wtx|wv|wvl|wvx|wwd|x|x-icon|x11|x3d|x3f|x86|x_b|x_t|xaa|xap|xar|xbap|xbdoc|xbm|xbplate|xbrl|xcf|xcodeproj|xdb|xdc|xdf|xdl|xdw|xe|xed|xeq|xex|xf|xfdf|xg0|xg1|xg2|xht|xhtm|xhtml|xis|xl|xla|xlam|xlam_1033|xlb|xlc|xld|xlf|xlgc|xlk|xll|xll_1033|xlm|xlr|xls|xlsb|xlsk|xlsm|xlsx|xlsx3gp|xlt|xltm|xltx|xltx_1033|xlv|xlw|xlwx|xmind|xml|xml_1033|xmlx|xmmap|xnb|xpi|xpl|xpm|xpp|xps|xpt|xq|xqx|xrm-ms|xsd|xsf|xsi|xsl|xslt|xsn|xsn_1033|xss|xst|xtbl|xtp|xtp2|xul|xvc|xvid|xvz|xwd|xwm|xwp|xxe|xxx|xy3|xyp|xyw|xyze|xz|xzsx|y|yab|yal|yaml|ybk|ycbcra|ydkdrl|yenc|yg0|yg1|yg2|yml|ync|yps|yrp|ysp|yuv|z|z02|z04|z3d|zabw|zap|zdb|zdc|zdct|zfsendtotarget|zif|zip|zipx|zix|zka|zoo|zps|zrb|zsp|ztmp|zw|zz|"
L2_2, L3_3 = nil, nil
if this_sigattrlog[8].matched then
  L2_2 = string.lower(this_sigattrlog[8].utf8p2):match("%.([^.]+)$")
  L3_3 = string.lower(this_sigattrlog[8].utf8p1):match("%.([^.]+)$")
elseif this_sigattrlog[9].matched then
  L2_2 = string.lower(this_sigattrlog[9].utf8p2):match("%.([^.]+)$")
  L3_3 = string.lower(this_sigattrlog[9].utf8p1):match("%.([^.]+)$")
end
if L2_2 == nil or L2_2 == "" or L1_1:find("|" .. L2_2 .. "|", 1, true) == nil then
  return mp.CLEAN
end
if L3_3 == nil or L3_3 == "" or L1_1:find("|" .. L3_3 .. "|", 1, true) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
