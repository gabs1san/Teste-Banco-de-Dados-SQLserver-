#INCLUDE 'protheus.ch'
#INCLUDE 'TopConn.ch' 

User Function BANCO03()

Local aArea := SB1-> (GetArea()) 
Local cQuery := ""
Local aDados := {}
Local nCount

cQuery := "SELECT "
cQuery += "B1_CODE AS CODIGO, "
cQuery += "B1_CODE AS DESCRICAO, "
cQuery += "FROM "
cQuery += " " + RetSQLName("SB1") + "SB1"
cQuery += "WHERE "
cQuery += " B1_MSBLQL != '1' "

    TCQuery cQuery New Alias "TEMP "

    While ! TEMP-> (EoF())
        AADD(aDados, TEMP-> CODIO)
        AADD(aDados, TEMPO-> DESCRICAO)
        TEMP->(DbSkip())
    EndDo    

    Alert(Len(aDados))

        For nCount := 1 To Len(aDados) 
            MsgInfo(aDados[nCount])
        Next nCount    

        TEMP-> (DbCloseArea())
        RestArea(aArea)

RETURN 
