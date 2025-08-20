#INCLUDE 'protheus.ch'

User Function BANCO01 ()

    Local aArea := SB1-> (GetArea())
    //Local cMsg := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) //posiciona no índice 1
    SB1->(DbGoTop())

    //posiciona o produto de código abaixo
    If SB1-> (dbSeek(FWXFilial("SB1") + "000002"))
        Alert(SB1-> B1_DESC)

    EndIf

    RestArea(aArea) //Fecha a tabela 


RETURN
