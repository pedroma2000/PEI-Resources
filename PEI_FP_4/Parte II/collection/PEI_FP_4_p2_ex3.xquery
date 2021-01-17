(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 3 :)

<resumo>
{
    let $x := doc("SAFT1.xml")/AuditFile/Header
    return (
    <saft nomeEmpresaEmissora =  "{$x/CompanyName/text()}"  
              data ="{$x/StartDate/text()}">
            {
            for $p in doc("SAFT1.xml")/AuditFile/MasterFiles
                return ($p/Product)
             }
    </saft>)
}
    
{
    let $s := doc("SAFT2.xml")/AuditFile/Header
    return (
    <saft nomeEmpresaEmissora =  "{$s/CompanyName/text()}"  
              data ="{$s/StartDate/text()}">
                {
                 for $p2 in doc("SAFT1.xml")/AuditFile/MasterFiles
                    return ($p2/Product)
                }
    </saft>)
}
</resumo>
