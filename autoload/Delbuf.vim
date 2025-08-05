fu! Delbuf#Delbuf() abort
    let l = []
    let t = tabpagenr()
    let w = winnr()
    let b = bufnr()
    if len(getbufinfo({'buflisted': 1})) == 1
        ene
        b #
    en
    tabdo call add(l, [tabpagenr(), winnr()])
    tabdo windo if bufnr() == b | bn | en
    exe 'bd!' b
    tabdo for i in l | exe i[0] .. 'tabn' | exe i[1] .. 'wincmd w' | endfor
    exe t .. 'tabn'
    exe w .. 'wincmd w'
endf
