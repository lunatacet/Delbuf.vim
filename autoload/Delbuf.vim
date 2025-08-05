fu! Delbuf#Delbuf(s) abort
    if a:s !=# 'bd' && a:s !=# 'bd!'
        echoerr 'Invalid argument'
        return
    en
    let l = []
    let t = tabpagenr()
    let w = winnr()
    let b = bufnr()
    tabdo call add(l, [tabpagenr(), winnr()])
    try
        if len(getbufinfo({'buflisted': 1})) == 1
            ene
            b #
        en
        tabdo windo if bufnr() == b | bn | en
        exe a:s b
    catch
        echoerr v:exception
    finally
        tabdo for i in l | exe i[0] .. 'tabn' | exe i[1] .. 'wincmd w' | endfor
        exe t .. 'tabn'
        exe w .. 'wincmd w'
    endt
endf
