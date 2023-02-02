function listReceitas(pg) {
    let filter = {
        veg: document.getElementById('ckb_veg').checked,
        ovo: document.getElementById('ckb_ovo').checked,
        soja: document.getElementById('ckb_soja').checked,
        leite: document.getElementById('ckb_leite').checked,
        glutem: document.getElementById('ckb_glutem').checked,
        amend: document.getElementById('ckb_amendoim').checked,
        crust: document.getElementById('ckb_crustaceos').checked,
        minTmp: Number(document.getElementById('tmp_min').value),
        maxTmp: Number(document.getElementById('tmp_max').value)
    };

    console.log(filter);


    let limit = 12 * pg;
    let i = limit - 12;
    (limit >= listaReceita.length && i < listaReceita.length)?limit=listaReceita.length:limit=12;
    
    if (Object.values(filter).filter((value) => value == true || value != 0).length == 0) {
        for(i; i<=limit; i++) {
            creatCardReceitas(i);
        }
    } else {
        for (i; i < limit; i++) {
            let validate = false
            let tmp = false;

            for(let [key, val] of Object.entries(filter)) {
                if (val==true || val > 0) {
                    if (key=='veg') {
                        (listaReceita[i].vegano==true)?validate=true:validate=false;
                        break;
                    }
                    if (key=='ovo') {
                        (listaReceita[i].ovo==false)?validate=true:validate=false;
                        break;
                    }
                    if (key=='soja') {
                        (listaReceita[i].soja==false)?validate=true:validate=false;
                        break;
                    }
                    if (key=='leite') {
                        (listaReceita[i].leite==false)?validate=true:validate=false;
                        break;
                    }
                    if (key=='glutem') {
                        (listaReceita[i].glutem==false)?validate=true:validate=false;
                        break;
                    }
                    if (key=='amend') {
                        (listaReceita[i].amendoim==false)?validate=true:validate=false;
                        break;
                    }
                    if (key=='crust') {
                        (listaReceita[i].crustaceo==false)?validate=true:validate=false;
                        break;
                    }
                    if (key=='minTmp') {
                        (val>0 || listaReceita[i].tempoPreparo>val)?tmp=true:tmp=false;
                        break;
                    }
                    if (key=='maxTmp') {
                        ((val>0 || listaReceita[i].tempoPreparo<=val) && tmp)?validate=true:'';
                        break;
                    }
                }
            }


            //console.log(i);
            console.log(listaReceita);
            console.log(validate);
            (validate)?creatCardReceitas(i):'';
        };
        

    }

    

    
}
