(: Parte 2, exercício 12.2 - Escreva uma expressão XQuery que permita obter um novo documento 
com a informação do documento authors e books :)

declare function local:getResumoIva($line) as element()
{
  for $t in $line/Tax
  return element taxa{
    attribute tipo {$t/TaxType},
    attribute codigo{$t/TaxCode},
    element valor_iva{
      $t/TaxPercentage/text()
    },
    element total_sem_iva{
      $line/Quantity * $line/UnitPrice
    },
    element total_iva{
      format-number($t/TaxPercentage div 100 * $line/Quantity * $line/UnitPrice,"#.##")
    },
    element total_com_iva{
       format-number( $line/Quantity * $line/UnitPrice + $t/TaxPercentage div 100 * $line/Quantity * $line/UnitPrice,"#.##")
    }
  }
};

declare option output:omit-xml-declaration "no";

element resumo{
  namespace xsi {'http://www.w3.org/2001/XMLSchema-instance'},
  attribute xsi:noNamespaceSchemaLocation{'resumoIva.xsd'},
  for $x in AuditFile/SourceDocuments/SalesInvoices/Invoice/Line
  return local:getResumoIva($x)
}

validate:xsd("C:\Users\jessi\Desktop\ESTG\Projetos\PEI\PEI_FP_5\Parte II\resumoIva.xml")