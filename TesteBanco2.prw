#INCLUDE 'protheus.ch'

User Function BANCO01 ()

    Local aArea := SB1-> (GetArea())
    Local cMsg := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) //posiciona no índice 1
    SB1->(DbGoTop())

    cMsg := Posicione(  'SB1',;
                        1,;
                        FWXFilial('SB1') + '000002',;
                        'B1_DESC'  )

    Alert("Descrição do Produto: " + cMsg, "Aviso")                    

    RestArea(aArea) //Fecha a tabela 


RETURN
